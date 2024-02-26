<?php

$client = $conn->prepare("SELECT * FROM clients WHERE client_id=:id");
$client->execute(["id"=>$_SESSION['msmbilisim_userid']]);
$client = $client->fetchAll(PDO::FETCH_ASSOC);
$client = $client[0];

if( $_POST && $_POST["username"] ):
    foreach ($_POST as $key => $value):
        $_SESSION["data"][$key]  = $value;
    endforeach;


    $receiver_username = $_POST["username"];
    $amount= htmlentities($_POST["amount"]);


    $fees = $conn->prepare("SELECT fundstransfer_fees FROM settings");
    $fees->execute([]);
    $fees = $fees->fetchAll(PDO::FETCH_ASSOC);
    $fees = $fees[0]['fundstransfer_fees'];

    if( !is_numeric($amount) OR !($amount > 0)){
        $error    = 1;
        $errorText= $languageArray["transferfunds.bank.amountNotNumeric"];
    }elseif( $client['balance'] < $amount ){
        $error    = 1;
        $errorText= $languageArray["transferfunds.bank.enoughBalance"];
    }else{
        $receiver = $conn->prepare("SELECT * FROM clients WHERE username=:username && client_id !=:id");
        $receiver->execute(["username"=>$receiver_username, "id"=>$_SESSION['msmbilisim_userid']]);
        $receiver = $receiver->fetchAll(PDO::FETCH_ASSOC);
        $receiver = $receiver[0];
        $receiver_id = $receiver['client_id'];
        
        if(count($receiver) == 0){
            $error    = 1;
            $errorText= $languageArray["transferfunds.bank.usernameNotFound"];
        }else{

            $afterFees = $amount - $amount * $fees / 100;
            
            $exec = $conn->prepare("UPDATE clients SET balance = balance - $amount WHERE client_id=:id");
            $exec->execute(["id"=>$client['client_id']]);
            $exec = $exec->fetchAll(PDO::FETCH_ASSOC);

    
            $exec = $conn->prepare("UPDATE clients SET balance = balance + $afterFees WHERE client_id=:id");
            $exec->execute(["id"=>$receiver_id]);
            $exec = $exec->fetchAll(PDO::FETCH_ASSOC);

            // sender
            
            
            $insert = $conn->prepare("INSERT INTO payments SET payment_status=:status, payment_mode=:mode, payment_amount=:amount, payment_bank=:bank, payment_method=:method, payment_delivery=:delivery, payment_note=:note, payment_update_date=:date, payment_create_date=:date2, client_id=:client_id, client_balance=:balance ");
            $insert = $insert->execute(array("status"=>3,"delivery"=>1,"bank"=>0,"mode"=>"Manuel","amount"=>$amount*-1,"method"=>17,"note"=>"Transfer funds to ".$receiver_username,"date"=>date("Y-m-d H:i:s"),"date2"=>date("Y-m-d H:i:s"),"balance"=>$client['balance'],"client_id"=>$client["client_id"] ));


            // receiver
            
            
            $insert2 = $conn->prepare("INSERT INTO payments SET payment_status=:status, payment_mode=:mode, payment_amount=:amount, payment_bank=:bank, payment_method=:method, payment_delivery=:delivery, payment_note=:note, payment_update_date=:date, payment_create_date=:date2, client_id=:client_id, client_balance=:balance ");
            $insert2 = $insert2->execute(array("status"=>3,"delivery"=>1,"bank"=>0,"mode"=>"Manuel","amount"=>$afterFees,"method"=>17,"note"=>"Transfered funds from ".$client['username'],"date"=>date("Y-m-d H:i:s"),"date2"=>date("Y-m-d H:i:s"),"balance"=>$receiver['balance'],"client_id"=>$receiver["client_id"] ));
              
              $msg = "  Hello, $receiver_username  "  .$client['username'] . " :Transfered $ : " .$afterFees  . " to your wallet Funds received :". site_url(). "login"; 
              $send = mail($receiver["email"],"Funds received",$msg);
        

            
            
            
            $success = 1;
            $successText = str_replace("{name}",$receiver_username, $languageArray["transferfunds.bank.done"]);
        }

    }

endif;

if( $payment_url ):
    echo '<script>setTimeout(function(){window.location="'.$payment_url.'"},1000)</script>';
endif;
 