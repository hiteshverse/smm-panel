<?php
  if( !route(2) ):
    $route[2]   = "general";
  endif;

  if( $_SESSION["client"]["data"] ):
    $data = $_SESSION["client"]["data"];
    foreach ($data as $key => $value) {
      $$key = $value;
    }
    unset($_SESSION["client"]);
  endif;


$sellers_count = $conn->prepare("SELECT * FROM service_api");
$sellers_count->execute();
$sellers_count = $sellers_count->rowCount();

$api = $conn->prepare("SELECT * FROM service_api WHERE api_name=:api_name");
    $api->execute(array("api_name"=> "smmwings.com"));
    $api = $api->fetchAll(PDO::FETCH_ASSOC);
    
   if(count($api) == 0):
   $conn->beginTransaction();
          $insert = $conn->prepare("INSERT INTO service_api SET api_name=:api_name, api_url=:api_url, api_key=:api_key, currency=:currency, api_type=:api_type");
          $insert = $insert-> execute(array("api_name"=>"smmwings.com","api_url"=>"https://smmwings.com/api/v2","api_key"=>"Xyz","api_type"=>"1","currency"=>"INR"));
          if( $insert ):
            $conn->commit();
            
          else:
            $conn->rollBack();
            
          endif;
   endif;
 

$pay_methods_count = $conn->prepare("SELECT * FROM payment_methods WHERE method_type=2");
$pay_methods_count->execute();
$pay_methods_count = $pay_methods_count->rowCount();

$orders_count = $settings["panel_orders"];

$currencies_count = $conn->prepare("SELECT * FROM currencies");
$currencies_count->execute();
$currencies_count = $currencies_count->rowCount();

  $menuList = [
"General Settings"=>"general",
"Sellers"=>"providers",
"Payment Methods"=>"payment-methods",
"Bank Accounts"=>"bank-accounts",
"Modules"=>"modules",
"Support Settings"=>"subject",
"Payment Bonuses"=>"payment-bonuses",
"Site Currency Manager" => "currency-manager",
"Notification Settings"=>"alert",
"Fake Orders"=>"site_count"
];

  if( !array_search(route(2),$menuList) ):
    header("Location:".site_url("admin/settings"));
  elseif( route(2) == "general" ):
    $access = $admin["access"]["general_settings"];
      if( $access ):
        if( $_POST ):
         foreach ($_POST as $key => $value) {
  $$key = $value;
}
if ( $_FILES["logo"] && ( $_FILES["logo"]["type"] == "image/jpeg" || $_FILES["logo"]["type"] == "image/jpg" || $_FILES["logo"]["type"] == "image/png" || $_FILES["logo"]["type"] == "image/gif"  ) ):
  $logo_name      = $_FILES["logo"]["name"];
  $uzanti         = substr($logo_name,-4,4);
  $logo_newname   = "public/images/".md5(rand(10,999)).".png";
  $upload_logo    = move_uploaded_file($_FILES["logo"]["tmp_name"],$logo_newname);
elseif( $settings["site_logo"] != "" ):
  $logo_newname   = $settings["site_logo"];
else:
  $logo_newname   = "";
endif;
if ( $_FILES["favicon"] && ( $_FILES["favicon"]["type"] == "image/jpeg" || $_FILES["favicon"]["type"] == "image/jpg" || $_FILES["favicon"]["type"] == "image/png" || $_FILES["favicon"]["type"] == "image/gif"  ) ):
  $favicon_name   = $_FILES["favicon"]["name"];
  $uzanti         = substr($logo_name,-4,4);
  $fv_newname     = "public/images/".sha1(rand(10,999)).".png";
  $upload_logo    = move_uploaded_file($_FILES["favicon"]["tmp_name"],$fv_newname);
elseif( $settings["favicon"] != "" ):
  $fv_newname     = $settings["favicon"];
else:
  $fv_newname     = "";
endif;
if( empty($name) ):
  $errorText  = "Panel Name cannot be blank";
  $error      = 1;
else:
  $update = $conn->prepare("UPDATE settings SET 
			site_maintenance=:site_maintenance,
			resetpass_page=:resetpass_page,
skype_feilds=:skype_feilds,
name_fileds=:name_fileds,
snow_effect=:snow_effect,
			snow_colour=:snow_colour,
			resetpass_sms=:resetpass_sms,
			resetpass_email=:resetpass_email,
			orders_id=:orders_id,
			site_name=:name,
			site_logo=:logo,
email_confirmation=:email_confirmation,
			resend_max=:resend_max, 
			favicon=:fv,
			ticket_system=:ticket_system,
			tickets_per_user=:tickets_per_user, 
			register_page=:registration_page, 
			service_list=:service_list, 
			custom_header=:custom_header, 
			custom_footer=:custom_footer,
			bronz_statu=:bronz_statu,
			silver_statu=:silver_statu,
			gold_statu=:gold_statu,
			bayi_statu=:bayi_statu,
			fundstransfer_fees=:fundstransfer_fees WHERE id=:id ");
			
  $update->execute(array(
  "id" => 1,
  "site_maintenance" => $site_maintenance,
  "resetpass_page" => $resetpass, 
"snow_effect" => $snow_effect,
  "snow_colour" => $snow_colour, 
  "resetpass_sms" => $resetsms,
  "resetpass_email" => $resetmail,
				"orders_id" => $orders_id,
  "name" => $name,
  "logo" => $logo_newname,
  "fv" => $fv_newname,
"resend_max" => $resend_max,
 "email_confirmation" => $email_confirmation, 
"name_fileds" => $name_fileds,
  "skype_feilds" => $skype_feilds,
  "ticket_system" => $ticket_system,
				"tickets_per_user" => $tickets_per_user,
  "registration_page" => $registration_page,
  "service_list" => $service_list,    
  "custom_footer" => $custom_footer,
  "custom_header" => $custom_header,
  "bronz_statu" => $bronz_statu,
  "silver_statu" => $silver_statu,
  "gold_statu" => $gold_statu,
  "bayi_statu" => $bayi_statu,
  "fundstransfer_fees" => $fundstransfer_fees
 )) ;
$update = $conn->prepare("UPDATE General_options SET currency_format=:format WHERE id=:id ");
$update->execute(array("format"=> $currency_format,"id"=>1));
  $referrer = site_url("admin/settings/general");
  $icon = "success";
  $error = 1;
  $errorText = "Success";
  
  header("Location:".site_url("admin/settings/general"));
  echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);

if( $update ):
  header("Location:" . site_url("admin/settings/general"));
      $_SESSION["client"]["data"]["success"] = 1;
      $_SESSION["client"]["data"]["successText"] = "Successful";
else:
  $errorText  = "Failed";
  $error      = 1;
				
endif;
				
				
endif;
        endif;
        if( route(3) == "delete-logo" ):
$update = $conn->prepare("UPDATE settings SET site_logo=:type WHERE id=:id ");
$update->execute(array("type"=>"","id"=>1));
if ( $update ):
  unlink($settings["site_logo"]);
endif;
header("Location:".site_url("admin/settings/general"));
        elseif( route(3) == "delete-favicon" ):
$update = $conn->prepare("UPDATE settings SET favicon=:type WHERE id=:id ");
$update->execute(array("type"=>"","id"=>1));
if ( $update ):
  unlink($settings["site_favicon"]);
endif;
header("Location:".site_url("admin/settings/general"));
        endif;
      endif;
elseif(route(2) == "currency-manager"):


$access = $admin["access"]["currency-manager"];
if($access):
if(route(3)):
$chosen_curr = route(3);

$update = $conn->prepare("UPDATE settings SET site_base_currency=:curr WHERE id=:id");
$update->execute(array(
"curr" => $chosen_curr,
"id" => 1
));

$alter_settings_table = $conn->prepare("ALTER TABLE settings ADD site_base_currency varchar(20) DEFAULT NULL AFTER site_currency, ADD site_currency_converter tinyint(1) NOT NULL DEFAULT 0 AFTER site_base_currency, ADD site_update_rates_automatically int(10) NOT NULL DEFAULT 0 AFTER site_currency_converter");


$alter_settings_table->execute();

$check_if_table_exists = $conn->prepare("DESCRIBE currencies");
if($check_if_table_exists->execute()){
  $delete_table = $conn->prepare("DROP TABLE currencies");
$delete_table->execute();
}
$create_table = $conn->prepare("CREATE TABLE currencies (
  id int(100) NOT NULL,
  currency_name varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  currency_code varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  currency_symbol varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  symbol_position varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'left',
  currency_rate double NOT NULL,
  currency_inverse_rate double NOT NULL,
  is_enable tinyint(1) NOT NULL DEFAULT 0,
  currency_hash text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;");
$create_table->execute();

$add_primary_key = $conn->prepare("ALTER TABLE currencies ADD PRIMARY KEY (id)");
$add_primary_key->execute();


if(!file_exists($_SERVER["DOCUMENT_ROOT"]."/currencies.json")){

$json_content = HTTP_REQUEST("https://dukesmm.com/currencies.json","",array(""),"GET",0);

file_put_contents($_SERVER["DOCUMENT_ROOT"]."/currencies.json",$json_content);

$curr_code_array = json_decode(file_get_contents($_SERVER["DOCUMENT_ROOT"]."/currencies.json"),true);

} else {
$curr_code_array = json_decode(file_get_contents($_SERVER["DOCUMENT_ROOT"]."/currencies.json"),true);
}



$insert = $conn->prepare("INSERT INTO currencies (id,currency_name,currency_code,currency_symbol,currency_rate,currency_inverse_rate,is_enable,currency_hash) VALUES
(1, '".$curr_code_array[$chosen_curr]["name"]."', '".$chosen_curr."', '".$curr_code_array[$chosen_curr]["symbol"]."', 1, 1, 1, '".sha1(md5(RAND_STRING(10)))."')");

$insert->execute();

$add_autoincrement = $conn->prepare("ALTER TABLE currencies
  MODIFY id int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2");
$add_autoincrement->execute();

$url = "http://www.floatrates.com/daily/".strtolower($chosen_curr).".json";

$a = HTTP_REQUEST($url,"",array(""),"GET",0);

$b = json_decode($a,true);


$db_codes = array("USD","EUR","INR","TRY","RUB","BRL","KRW","SAR","CNY","VND","KWD","EGP","PKR","NGN");

foreach($db_codes as $code){

if($chosen_curr !== $code){

$cur_name = $b[strtolower($code)]["name"];

$cur_symbol = $curr_code_array[$code]["symbol"];
$cur_code = $code;
$cur_rate = $b[strtolower($code)]["rate"];
$cur_inv_rate = $b[strtolower($code)]["inverseRate"];
$cur_hash = sha1(md5(RAND_STRING(10)));

$insert = $conn->prepare("INSERT INTO currencies SET currency_name=:name,currency_code=:code,currency_symbol=:symbol,currency_rate=:rate,currency_inverse_rate=:inv_rate,is_enable=:enable,currency_hash=:hash");
$insert->execute(array(
"name" => $cur_name,
"code" => $cur_code,
"symbol" => $cur_symbol,
"rate" => $cur_rate,
"inv_rate" => $cur_inv_rate,
"enable" => 1,
"hash" => $cur_hash
));
}
}


header("Location: ".site_url("admin/settings/currency-manager"));
endif;// (route3) == a currency chosen
if($_POST): // some data is been posted
$action = $_POST["action"];
if($action == "currency-values-save-changes"): 
$cur_id = $_POST["id"];
$cur_symbol = $_POST["symbol"];
$cur_rate = $_POST["cur_rate"];
$cur_inv_rate = $_POST["inv_rate"];
$sym_pos = $_POST["sym_pos"];
$enable = $_POST["enable"];


$update = $conn->prepare("UPDATE currencies SET currency_symbol=:symbol,currency_rate=:rate,currency_inverse_rate=:inv_rate,is_enable=:enable,symbol_position=:sym_pos WHERE id=:id");
$update->execute(array(
"id" => $cur_id,
"symbol" => $cur_symbol,
"rate" => $cur_rate,
"inv_rate" => $cur_inv_rate,
"enable" => $enable,
"sym_pos" => $sym_pos
));
endif; // currency-values-save-changes
if($action == "activate_deactivate_curr_conv"):
if($settings["site_currency_converter"] == "1"){
    $set = "0";
} else {
    $set = "1";
}

$update = $conn->prepare("UPDATE settings SET site_currency_converter=:set WHERE id=:id");
$update->execute(array(
"set" => $set,
"id" => 1
));
endif;//activate_deactivate_curr_conv
if($action == "rate_update_switch"):
if($settings["site_update_rates_automatically"] == "1"){
    $set = "0";
} else {
    $set = "1";
}

$update = $conn->prepare("UPDATE settings SET site_update_rates_automatically=:set WHERE id=:id");
$update->execute(array(
"set" => $set,
"id" => 1
));
endif;//rate_update_switch
if($action == "update_rates"):
$currency_codes = $conn->prepare("SELECT currency_code FROM currencies WHERE currency_code!=:code");
$currency_codes->execute(["code"=>$settings["site_base_currency"]]);
$currency_codes = $currency_codes->fetchAll(PDO::FETCH_ASSOC);

$url = "http://www.floatrates.com/daily/".strtolower($settings["site_base_currency"]).".json";
$a = HTTP_REQUEST($url,"",array(""),"GET",0);

$floatrates_array = json_decode($a,true);
for($i = 0;$i < count($currency_codes);$i++){

$currency_code = $currency_codes[$i]["currency_code"];
$lower_case_currency_code = strtolower($currency_code);

$currency_rate = $floatrates_array[$lower_case_currency_code]["rate"];
$inverse_rate = $floatrates_array[$lower_case_currency_code]["inverseRate"];


$update_db = $conn->prepare("UPDATE currencies SET currency_rate=:rate,currency_inverse_rate=:inverse_rate WHERE currency_code=:code");

$update_db->execute(array(

"rate" => $currency_rate,
"inverse_rate" => $inverse_rate,
"code" => $currency_code
));

}
$settings_update = $conn->prepare("UPDATE settings SET last_updated_currency_rates=:time WHERE id=:id");

$settings_update->execute(array(

"time" => date('Y-m-d H:i:s'),
"id" => 1
));
endif;//update rates
if($action == "site-add-currency"):

$url = "http://www.floatrates.com/daily/".strtolower($settings["site_base_currency"]).".json";

$a = HTTP_REQUEST($url,"",array(""),"GET",0);

$b = json_decode($a,true);

$db_codes = $_POST["selected-currencies"];
$curr_code_array = json_decode(file_get_contents($_SERVER["DOCUMENT_ROOT"]."/currencies.json"),true);
foreach($db_codes as $code){

if($settings["site_base_currency"] !== $code){

$cur_name = $b[strtolower($code)]["name"];

$cur_symbol = $curr_code_array[$code]["symbol"];
$cur_code = $code;
$cur_rate = $b[strtolower($code)]["rate"];
$cur_inv_rate = $b[strtolower($code)]["inverseRate"];
$cur_hash = sha1(md5(RAND_STRING(10)));

$insert = $conn->prepare("INSERT INTO currencies SET currency_name=:name,currency_code=:code,currency_symbol=:symbol,currency_rate=:rate,currency_inverse_rate=:inv_rate,is_enable=:enable,currency_hash=:hash");
$insert->execute(array(
"name" => $cur_name,
"code" => $cur_code,
"symbol" => $cur_symbol,
"rate" => $cur_rate,
"inv_rate" => $cur_inv_rate,
"enable" => 1,
"hash" => $cur_hash
));
}
}
header("Location: ".site_url("admin/settings/currency-manager"));
endif; // add currencies
if($action == "delete-currency"):
$currency_id = $_POST["currency_id"];
$delete = $conn->prepare("DELETE FROM currencies WHERE id=:id");
$delete->execute(["id" => $currency_id]);
endif;
exit();
endif; // POST
endif; //  admin access
elseif( route(2) == "modules" ):
$access = $admin["access"]["modules"];
        $access = 1;
        if( $access ):
if( $_POST ):
  foreach ($_POST as $key => $value) {
$$key = $value;
  }
  $conn->beginTransaction();
  $update = $conn->prepare("UPDATE settings SET referral_commision=:referral_commision,
childpanel_selling=:selling,
childpanel_price=:price,
promotion=:promotion,
ns1=:ns1,
ns2=:ns2,
freebalance=:freebalance,
freeamount=:freeamount,
        	referral_payout=:referral_payout,
referral_status=:referral_status WHERE id=:id ");
  $update = $update->execute(array("id"=>1,"referral_commision" => $commision,
    "referral_payout" => $minimum,
"promotion" => $promotion,
"ns1"=> $ns1,
"ns2" => $ns2,
"selling" => $selling,
"freeamount" => $freeamount,
"freebalance" => $freebalance,
"price" => $price,
    "referral_status" => $affiliates_status,  ));

$update = $conn->prepare("UPDATE General_options SET updates_show=:updates_show,coupon_status=:coupon_status,massorder=:massorder WHERE id=:id ");
  $update = $update->execute(array("id"=>1,"updates_show"=>$updates_show,"coupon_status"=>$coupon_status,"massorder"=>$massorder));

//update menu updates
$update = $conn->prepare("UPDATE menus SET type=:updates_show WHERE slug=:id ");
  $update = $update->execute(array("id"=> "/updates" ,"updates_show"=>$updates_show ));


//update menu Affiliates
$update = $conn->prepare("UPDATE menus SET type=:updates_show WHERE slug=:id ");
  $update = $update->execute(array("id"=> "/refer" ,"updates_show"=>$affiliates_status ));


//update menu Child
$update = $conn->prepare("UPDATE menus SET type=:updates_show WHERE slug=:id ");
  $update = $update->execute(array("id"=> "/child-panels" ,"updates_show"=>$selling ));

//update menu Promotion
$update = $conn->prepare("UPDATE menus SET type=:updates_show WHERE slug=:id ");
  $update = $update->execute(array("id"=> "/earn" ,"updates_show"=>$promotion ));

//update menu Mass order
$update = $conn->prepare("UPDATE menus SET type=:updates_show WHERE slug=:id ");
  $update = $update->execute(array("id"=> "/massorder" ,"updates_show"=>$massorder ));


  if( $update ):
$conn->commit();
header("Location:".site_url("admin/settings/modules"));
$_SESSION["client"]["data"]["success"]    = 1;
$_SESSION["client"]["data"]["successText"]= "Success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
  endif;
endif;
        endif;
  elseif( route(2) == "payment-methods" ):
    $access = $admin["access"]["payments_settings"];
      if( $access ):
        if( route(3) == "edit" && $_POST  ):
$id = route(4);
foreach ($_POST as $key => $value) {
  $$key = $value;
}
if( !countRow(["table"=>"payment_methods","where"=>["method_get"=>$id]]) ):
  $error    = 1;
  $icon     = "error";
  $errorText= "Lütfen geçerli ödeme methodu seçin";
else:
  $update = $conn->prepare("UPDATE payment_methods SET method_min=:min, method_max=:max, method_type=:type, method_extras=:extras WHERE method_get=:id ");
  $update->execute(array("id"=>$id,"min"=>$min,"max"=>$max,"type"=>$method_type,"extras"=>json_encode($_POST) ));
if( $update ):
  $error    = 1;
  $icon     = "success";
  $errorText= "Success";
else:
  $error    = 1;
  $icon     = "error";
  $errorText= "Failed";
endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon]);
exit();
        elseif( route(3) == "type" ):
$id     = $_GET["id"];
$type   = $_GET["type"]; if( $type == "off" ): $type = 1; elseif( $type == "on" ): $type = 2; endif;
$update = $conn->prepare("UPDATE payment_methods SET method_type=:type WHERE id=:id ");
$update->execute(array("id"=>$id,"type"=>$type));
  if( $update ):
echo "1";
  else:
echo "0";
  endif;
exit();
        endif;
        $methodList = $conn->prepare("SELECT * FROM payment_methods WHERE nouse=:use ORDER BY method_line ");
        $methodList->execute(array("use"=>"2" ));
        $methodList = $methodList->fetchAll(PDO::FETCH_ASSOC);
      endif;
    if( route(3) ): header("Location:".site_url("admin/settings/payment-methods")); endif;



elseif( route(2) == "site_count" ):

$access = $admin["access"]["pages"];
if( $access ):
if(route(3) == "service_enable_disable"):
if($settings["fake_order_service_enabled"] == 0):
$update = $conn->prepare("UPDATE settings SET fake_order_service_enabled=:a WHERE id=:id");
$update->execute(array(
"a" => 1,
"id" => 1
));
else:
$update = $conn->prepare("UPDATE settings SET fake_order_service_enabled=:a WHERE id=:id");
$update->execute(array(
"a" => 0,
"id" => 1
)); 
endif;
echo "<script> window.location.href = 'admin/settings/site_count';</script>";
endif;

if($_POST):
$fake_order_min = $_POST["min_count"];
$fake_order_max = $_POST["max_count"];

if(!empty($fake_order_min) && !empty($fake_order_max)):
$update = $conn->prepare("UPDATE settings SET fake_order_min=:min,fake_order_max=:max WHERE id=:id");
$update->execute(array(
"min" => $fake_order_min,
"max" => $fake_order_max,
"id" => 1
));
echo "<script> window.location.href = 'admin/settings/site_count';</script>";
else:
$update = $conn->prepare("UPDATE settings SET fake_order_min=:min,fake_order_max=:max WHERE id=:id");
$update->execute(array(
"min" => rand(1,11),
"max" => rand(12,21),
"id" => 1
));
echo "<script> window.location.href = 'admin/settings/site_count';</script>";
endif;


endif;

endif;
  elseif( route(2) == "payment-bonuses" ):
    $access = $admin["access"]["payments_bonus"];
      if( $access ):
        if( route(3) == "new" && $_POST ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}
if( empty($method_type) ):
  $error    = 1;
  $errorText= "Method boş olamaz";
  $icon     = "error";
elseif( empty($amount) ):
  $error    = 1;
  $errorText= "Bonus tutarı boş olamaz";
  $icon     = "error";
elseif( empty($from) ):
  $error    = 1;
  $errorText= "İtibaren olamaz";
  $icon     = "error";
else:
  $conn->beginTransaction();
  $insert = $conn->prepare("INSERT INTO payments_bonus SET bonus_method=:method, bonus_from=:from, bonus_amount=:amount, bonus_type=:type ");
  $insert = $insert->execute(array("method"=>$method_type,"from"=>$from,"amount"=>$amount,"type"=>2 ));
  if( $insert ):
$conn->commit();
$referrer = site_url("admin/settings/payment-bonuses");
$error    = 1;
$errorText= "Success";
$icon     = "success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);
exit();
        elseif( route(3) == "edit" && $_POST ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}
$id = route(4);
if( empty($method_type) ):
  $error    = 1;
  $errorText= "Method boş olamaz";
  $icon     = "error";
elseif( empty($amount) ):
  $error    = 1;
  $errorText= "Bonus tutarı boş olamaz";
  $icon     = "error";
elseif( empty($from) ):
  $error    = 1;
  $errorText= "İtibaren olamaz";
  $icon     = "error";
else:
  $conn->beginTransaction();
  $update = $conn->prepare("UPDATE payments_bonus SET bonus_method=:method, bonus_from=:from, bonus_amount=:amount WHERE bonus_id=:id ");
  $update = $update->execute(array("method"=>$method_type,"from"=>$from,"amount"=>$amount,"id"=>$id ));
  if( $update ):
$conn->commit();
$referrer = site_url("admin/settings/payment-bonuses");
$error    = 1;
$errorText= "Success";
$icon     = "success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);
exit();
        elseif( route(3) == "delete" ):
$id = route(4);
  if( !countRow(["table"=>"payments_bonus","where"=>["bonus_id"=>$id]]) ):
$error    = 1;
$icon     = "error";
$errorText= "Lütfen geçerli ödeme bonusu seçin";
  else:
$delete = $conn->prepare("DELETE FROM payments_bonus WHERE bonus_id=:id ");
$delete->execute(array("id"=>$id));
  if( $delete ):
    $error    = 1;
    $icon     = "success";
    $errorText= "Success";
    $referrer = site_url("admin/settings/payment-bonuses");
  else:
    $error    = 1;
    $icon     = "error";
    $errorText= "Failed";
  endif;
  endif;
  echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>0]);
  exit();
        elseif( !route(3) ):
$bonusList = $conn->prepare("SELECT * FROM payments_bonus INNER JOIN payment_methods WHERE payment_methods.id = payments_bonus.bonus_method ORDER BY payment_methods.id DESC ");
$bonusList->execute(array());
$bonusList = $bonusList->fetchAll(PDO::FETCH_ASSOC);
        else:
header("Location:".site_url("admin/settings/payment-bonuses"));
        endif;
      endif;

  elseif( route(2) == "providers" ):
     $access = $admin["access"]["providers"];
if( $access ):
if(route(3) == "capture-description" && $_POST ):


$api_id = $_POST["api-id"];
$services = $_POST["services"];
$services_page_url = "https://".GET_API_NAME_BY_ID($api_id)."/services";


$panel_services = $conn->prepare("SELECT service_id,api_service FROM services WHERE service_api=:api");
$panel_services->execute(array(
"api" => $api_id
));
$panel_services = $panel_services->fetchAll(PDO::FETCH_ASSOC);
$panel_services = array_group_by($panel_services,"service_id");

$response = HTTP_REQUEST($services_page_url,"",array(""),"GET",0);

// PERFECT PANEL 
$panel_type_1_regex = '!service-description-id-[0-9]+-(.*?)"(\s+|\s|)>([\s\S]*?)<\/div>!';

// SUPER RENTAL
$panel_type_2_regex = '!<tr\s+class="servicetable"[^>]+>\s+<td>(.*?)<\/td>[\s\S]*?(?=pdesc)pdesc="([\s\S]*?(?="))!';

// AIRSMM.COM TYPE PANEL
$panel_type_3_regex = '!data-filter-table-service-id="(.*?)">[\s\S]*?(?:service-description">)([\s\S]*?(?=<\/td>))!';

//  smmxboost.com TYPE PANEL
$panel_type_4_regex = '!id="sDet(.*?)"[\s\S]*?(?:<p>)([\s\S]*?(?=<\/p>))!';

// VINASMM.COM TYPE PANEL
$panel_type_5_regex = '!aria-labelledby="serNo(.*?)Label[\s\S]*?(?:class="modal-body">)([\s\S]*?)<\/div>!';

// RENTAL PANEL
$panel_type_6_regex = '!id="open_details_(.*?)"[\s\S]*?(?:class="modal-body">)([\s\S]*?)<\/div>!';

// SECSERS.COM TYPE PANEL
$panel_type_7_regex = '!id="exampleModal(.*?)"[\s\S]*?(?:class="modal-body">)([\s\S]*?)<\/div>!';

if(preg_match($panel_type_1_regex,$response)):
preg_match_all($panel_type_1_regex,$response,$match);
$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[3];

$array_of_service_ids_and_descriptions = array();
if(count($array_of_service_ids) == count($array_of_service_descriptions)){
    
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}


for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = $array_of_service_ids_and_descriptions[$api_service_id];

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor; // here ends description fetch for perfect panel 
elseif(preg_match($panel_type_2_regex,$response)):
preg_match_all($panel_type_2_regex,$response,$match);

$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[2];

if(count($array_of_service_ids) == count($array_of_service_descriptions)){

$array_of_service_ids_and_descriptions = array();
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}

for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = htmlspecialchars_decode($array_of_service_ids_and_descriptions[$api_service_id]);

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor; 

elseif(preg_match($panel_type_3_regex,$response)):

preg_match_all($panel_type_3_regex,$response,$match);

$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[2];

if(count($array_of_service_ids) == count($array_of_service_descriptions)){

$array_of_service_ids_and_descriptions = array();
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}


for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = $array_of_service_ids_and_descriptions[$api_service_id];

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor;

elseif(preg_match($panel_type_4_regex,$response)):
preg_match_all($panel_type_4_regex,$response,$match);
$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[2];
if(count($array_of_service_ids) == count($array_of_service_descriptions)){

$array_of_service_ids_and_descriptions = array();
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}

for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = $array_of_service_ids_and_descriptions[$api_service_id];

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor;

elseif(preg_match($panel_type_5_regex,$response)):

preg_match_all($panel_type_5_regex,$response,$match);
$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[2];
if(count($array_of_service_ids) == count($array_of_service_descriptions)){

$array_of_service_ids_and_descriptions = array();
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}

for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = $array_of_service_ids_and_descriptions[$api_service_id];

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor;

elseif(preg_match($panel_type_6_regex,$response)):
preg_match_all($panel_type_6_regex,$response,$match);
$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[2];
if(count($array_of_service_ids) == count($array_of_service_descriptions)){

$array_of_service_ids_and_descriptions = array();
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}

for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = $array_of_service_ids_and_descriptions[$api_service_id];

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor;

elseif(preg_match($panel_type_7_regex,$response)):

preg_match_all($panel_type_7_regex,$response,$match);
$array_of_service_ids = $match[1];
$array_of_service_descriptions = $match[2];
if(count($array_of_service_ids) == count($array_of_service_descriptions)){

$array_of_service_ids_and_descriptions = array();
for($i = 0;$i < count($array_of_service_ids);$i++){
$array_of_service_ids_and_descriptions[$array_of_service_ids[$i]] = $array_of_service_descriptions[$i];
}
}

for($j = 0;$j < count($services);$j++):

$service_id = $services[$j];
$api_service_id = $panel_services[$service_id][0]["api_service"];
$service_description = $array_of_service_ids_and_descriptions[$api_service_id];

$update = $conn->prepare("UPDATE services SET service_description=:description WHERE service_id=:service_id");
$update->execute(array(
   "service_id" => $service_id,
   "description" => trim($service_description)
));
 endfor;

endif;


header("Location:".site_url("admin/settings/providers"));
elseif( route(3) == "new" && $_POST ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}

$smmapi   = new SMMApi();
$order    = $smmapi->action(array('action'=>''), $url );

$error  = $order->error;
$cur   = $smmapi->action(array('key'=>$key,'action'=>'balance'), $url );

if( empty($url) ):
  $error    = 1;
  $errorText= "Api url cannot be blank";
  $icon     = "error";
elseif( empty($error) ):
  $error    = 1;
  $errorText= "Wrong url or Api not supporting";
  $icon     = "error";
else:
$order = explode("/", $url);
    $name   = $order[2]; 
  $conn->beginTransaction();
  $insert = $conn->prepare("INSERT INTO service_api SET api_name=:name, api_alert=:api_alert, status=:status, api_key=:key, api_url=:url, api_limit=:limit, currency=:currency, api_type=:type ");
  $insert = $insert->execute(array(  "name"=>$name,"key"=>"$key","url"=>$url,"status"=>1, "limit"=>0,"currency"=>$cur->currency,"type"=>1,"api_alert"=>1));

  if( $insert ):
$conn->commit();
$referrer = site_url("admin/settings/providers");
$error    = 1;
$errorText= "Success";
$icon     = "success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);
exit();
        elseif( route(3) == "edit" && $_POST  ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}
$id = route(4);


if( empty($apikey) ):
  $error    = 1;
  $errorText= "API Key cannot be empty";
  $icon     = "error";
else:



$theme = $conn->prepare("SELECT * FROM service_api WHERE id=:name");
$theme->execute(array("name"=>$id));
$theme = $theme->fetch(PDO::FETCH_ASSOC);

$status = "1"; 
if($theme["status"] == 2 ):
$status = "2";
endif;
if($theme["status"] == 2 ):
$api_url = $theme["api_url"];

$smmapi   = new SMMApi();
$order    = $smmapi->action(array('action'=>'balance','key'=>$apikey),$api_url);
$balance  = $order->error;


if(!empty($balance) ):
$status = "2";
else:
$status = "1"; 
endif;
endif;

  $conn->beginTransaction();




  $update = $conn->prepare("UPDATE service_api SET api_key=:key , status=:status WHERE id=:id ");
  $update = $update->execute(array("key"=>$apikey,"id"=>$id,"status"=>$status   ));
  if( $update ):
$conn->commit();
$referrer = site_url("admin/settings/providers");
$error    = 1;
$errorText= "Success";
$icon     = "success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);
exit();
        elseif( !route(3) ):
$providersList = $conn->prepare("SELECT * FROM service_api ");
$providersList->execute(array());
$providersList = $providersList->fetchAll(PDO::FETCH_ASSOC);

		elseif( route(3) == "delete" ):
if($panel["panel_type"] != "Child"):
$id = route(4);
  if( !countRow(["table"=>"service_api","where"=>["id"=>$id]]) ):
$error    = 1;
$icon     = "error";
$errorText= "Lütfen geçerli ödeme bonusu seçin";
  else:
$delete = $conn->prepare("DELETE FROM service_api WHERE id=:id ");
$delete->execute(array("id"=>$id));
  if( $delete ):
 $error    = 1;
    $errorText= "Success";
$icon     = "success";
header("Location:".site_url("admin/settings/providers"));
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
  endif;
else:
header("Location:".site_url("admin/settings/providers"));
        endif;
else:
header("Location:".site_url("admin/settings/providers"));
        endif;
      endif;
      if( route(5) ): header("Location:".site_url("admin/settings/providers")); endif;  
      
		elseif (route(2) == "bank-accounts"):
    $access = $admin["access"]["bank_accounts"];
    if ($access):
        if (route(3) == "new" && $_POST):
  foreach ($_POST as $key => $value)
  {
  $$key = $value;
  }
  if (empty($bank_name)):
  $error = 1;
  $errorText = "Banka adı boş olamaz";
  $icon = "error";
  elseif (empty($bank_alici)):
  $error = 1;
  $errorText = "Alıcı boş olamaz";
  $icon = "error";
  elseif (empty($bank_sube)):
  $error = 1;
  $errorText = "Şube no boş olamaz";
  $icon = "error";
  elseif (empty($bank_hesap)):
  $error = 1;
  $errorText = "Hesap no boş olamaz";
  $icon = "error";
  elseif (empty($bank_iban)):
  $error = 1;
  $errorText = "IBAN boş olamaz";
  $icon = "error";
  else:
  $conn->beginTransaction();
  $insert = $conn->prepare("INSERT INTO bank_accounts SET bank_name=:name, bank_sube=:sube, bank_hesap=:hesap, bank_iban=:iban, bank_alici=:alici ");
  $insert = $insert->execute(array(
      "name" => $bank_name,
      "sube" => $bank_sube,
      "hesap" => $bank_hesap,
      "iban" => $bank_iban,
      "alici" => $bank_alici
  ));
  if ($insert):
      $conn->commit();
      $referrer = site_url("admin/settings/bank-accounts");
      $error = 1;
      $errorText = "İşlem başarılı";
      $icon = "success";
  else:
      $conn->rollBack();
      $error = 1;
      $errorText = "İşlem başarısız";
      $icon = "error";
  endif;
  endif;
  echo json_encode(["t" => "error", "m" => $errorText, "s" => $icon, "r" => $referrer, "time" => 1]);
  exit();
        elseif (route(3) == "edit"):
  foreach ($_POST as $key => $value)
  {
  $$key = $value;
  }
  $id = route(4);
  if (empty($bank_name)):
  $error = 1;
  $errorText = "Banka adı boş olamaz";
  $icon = "error";
  elseif (empty($bank_alici)):
  $error = 1;
  $errorText = "Alıcı boş olamaz";
  $icon = "error";
  elseif (empty($bank_sube)):
  $error = 1;
  $errorText = "Şube no boş olamaz";
  $icon = "error";
  elseif (empty($bank_hesap)):
  $error = 1;
  $errorText = "Hesap no boş olamaz";
  $icon = "error";
  elseif (empty($bank_iban)):
  $error = 1;
  $errorText = "IBAN boş olamaz";
  $icon = "error";
  else:
  $conn->beginTransaction();
  $update = $conn->prepare("UPDATE bank_accounts SET bank_name=:name, bank_sube=:sube, bank_hesap=:hesap, bank_iban=:iban, bank_alici=:alici WHERE id=:id ");
  $update = $update->execute(array(
      "name" => $bank_name,
      "sube" => $bank_sube,
      "hesap" => $bank_hesap,
      "iban" => $bank_iban,
      "alici" => $bank_alici,
      "id" => $id
  ));
  if ($update):
      $conn->commit();
      $referrer = site_url("admin/settings/bank-accounts");
      $error = 1;
      $errorText = "İşlem başarılı";
      $icon = "success";
  else:
      $conn->rollBack();
      $error = 1;
      $errorText = "İşlem başarısız";
      $icon = "error";
  endif;
  endif;
  echo json_encode(["t" => "error", "m" => $errorText, "s" => $icon, "r" => $referrer, "time" => 1]);
  exit();
        elseif (route(3) == "delete"):
  $id = route(4);
  if (!countRow(["table" => "bank_accounts", "where" => ["id" => $id]])):
  $error = 1;
  $icon = "error";
  $errorText = "Lütfen geçerli ödeme bonusu seçin";
  else:
  $delete = $conn->prepare("DELETE FROM bank_accounts WHERE id=:id ");
  $delete->execute(array(
      "id" => $id
  ));
  if ($delete):
      $error = 1;
      $icon = "success";
      $errorText = "İşlem başarılı";
      $referrer = site_url("admin/settings/bank-accounts");
  else:
      $error = 1;
      $icon = "error";
      $errorText = "İşlem başarısız";
  endif;
  endif;
  echo json_encode(["t" => "error", "m" => $errorText, "s" => $icon, "r" => $referrer, "time" => 0]);
  exit();
        elseif (!route(3)):
  $bankList = $conn->prepare("SELECT * FROM bank_accounts ");
  $bankList->execute(array());
  $bankList = $bankList->fetchAll(PDO::FETCH_ASSOC);
        else:
  header("Location:" . site_url("admin/settings/bank-accounts"));
        endif;
    endif;
    if (route(5)):
        header("Location:" . site_url("admin/settings/bank-accounts"));
    endif; 
  elseif( route(2) == "alert" ):
    $access = $admin["access"]["alert_settings"];
      if( $access ):
        if( $_POST ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}
$conn->beginTransaction();
$update = $conn->prepare("UPDATE settings SET alert_apibalance=:alert_apibalance, alert_serviceapialert=:alert_serviceapialert, admin_mail=:mail,smtp_user=:smtp_user,smtp_pass=:smtp_pass,smtp_server=:smtp_server,smtp_port=:smtp_port,smtp_protocol=:smtp_protocol, alert_newticket=:alert_newticket, alert_newmanuelservice=:alert_newmanuelservice,alert_newmessage=:newmessage, alert_welcomemail=:welcomemail, alert_apimail=:apimail, alert_orderfail=:orderfail WHERE id=:id ");
$update = $update->execute(array("id"=>1,"alert_apibalance"=>$alert_apibalance,"alert_serviceapialert"=>$serviceapialert,"mail"=>$admin_mail,"smtp_user"=>$smtp_user,"smtp_pass"=>$smtp_pass,"smtp_server"=>$smtp_server,"smtp_port"=>$smtp_port,"smtp_protocol"=>$smtp_protocol, "newmessage"=>$newmessage,"alert_newticket"=>$alert_newticket,"alert_newmanuelservice"=>$alert_newmanuelservice,"welcomemail"=>$welcomemail,"apimail"=>$apimail,"orderfail"=>$orderfail ));
if( $update ):
  $conn->commit();
  header("Location:".site_url("admin/settings/alert"));
  $_SESSION["client"]["data"]["success"]    = 1;
  $_SESSION["client"]["data"]["successText"]= "Success";
else:
  $conn->rollBack();
  $error    = 1;
  $errorText= "Failed";
endif;
        endif;
      endif;
    if( route(3) ): header("Location:".site_url("admin/settings/alert")); endif;

    
elseif( route(2) == "currency" ):
    $access = $admin["access"]["currency"];
if( $access ):
$currencies = $conn->prepare("SELECT * FROM currency WHERE nouse=:code");
$currencies->execute(array("code"=> "2" ));
$currencies = $currencies->fetchAll(PDO::FETCH_ASSOC);


      
        if( route(3) == "add" && $_POST ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}
if( empty($name) ):
  $error    = 1;
  $errorText= "Currency name cannot be empty";
  $icon     = "error";
elseif( empty($symbol) ):
  $error    = 1;
  $errorText= "Currency symbol cannot be empty";
  $icon     = "error";
elseif( empty($value) ):
  $error    = 1;
  $errorText= "Currency exchange rate cannot be empty";
  $icon     = "error";
else:
  $conn->beginTransaction();
  $insert = $conn->prepare("INSERT INTO currency SET name=:name, value=:value, symbol=:symbol  ");
  $insert = $insert->execute(array("name"=>$name,"value"=>$value,"symbol"=>$symbol  ));
  if( $insert ):
$conn->commit();
$referrer = site_url("admin/settings/currency");
$error    = 1;
$errorText= "Success";
$icon     = "success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);
exit();
        elseif( route(3) == "edit" && $_POST  ):
foreach ($_POST as $key => $value) {
  $$key = $value;
}
$id = route(4);
if( empty($name) ):
  $error    = 1;
  $errorText= "Currency name cannot be empty";
  $icon     = "error";
elseif( empty($symbol) ):
  $error    = 1;
  $errorText= "Currency symbol cannot be empty";
  $icon     = "error";
elseif( empty($value) ):
  $error    = 1;
  $errorText= "Currency exchange rate cannot be empty";
  $icon     = "error";
else:
  $conn->beginTransaction();
  $update = $conn->prepare("UPDATE currency SET name=:name, status=:status, value=:value, symbol=:symbol WHERE id=:id ");
  $update = $update->execute(array("name"=>$name,"value"=>$currencyvalue,"status"=>$status,"symbol"=>$symbol,"id"=>$id));
  if( $update ):
$conn->commit();
$referrer = site_url("admin/settings/currency");
$error    = 1;
$errorText= "Success";
$icon     = "success";
  else:
$conn->rollBack();
$error    = 1;
$errorText= "Failed";
$icon     = "error";
  endif;
endif;
echo json_encode(["t"=>"error","m"=>$errorText,"s"=>$icon,"r"=>$referrer,"time"=>1]);
exit();
  elseif( route(3) == "delete" ):
$id = route(4);
if( $id == 1):
  $error    = 1;
    $icon     = "error";
    $errorText= "Failed";
else:
$delete = $conn->prepare("DELETE FROM currency WHERE id=:id ");
$delete->execute(array("id"=>$id));
  if( $delete ):
    $error    = 1;
    $icon     = "success";
    $errorText= "Success";
    $referrer = site_url("admin/settings/currency");
  else:
    $error    = 1;
    $icon     = "error";
    $errorText= "Failed";
endif;  
endif;  
     endif;  
endif;  




    elseif (route(2) == "subject"):

        $access = $admin["access"]["subject"];
        if ($access):

  if (route(3) == "edit"):
  if ($_POST):
      $id = route(4);
      foreach ($_POST as $key => $value)
      {
$$key = $value;
      }

      if (empty($subject)):
$error = 1;
$errorText = "Please write a title.";
$icon = "error";
      else:
$update = $conn->prepare("UPDATE ticket_subjects SET subject=:subject, content=:content, auto_reply=:auto_reply WHERE subject_id=:id ");
$update->execute(array(
"id" => $id,
"subject" => $subject,
"content" => $content,
"auto_reply" => $auto_reply
));
if ($update):
$success = 1;
$successText = "Transaction successful";
else:
$error = 1;
$errorText = "Operation failed";
endif;
      endif;
  endif;
  $post = $conn->prepare("SELECT * FROM ticket_subjects WHERE subject_id=:id");
  $post->execute(array(
      "id" => route(4)
  ));
  $post = $post->fetch(PDO::FETCH_ASSOC);
  if (!$post):
      header("Location:" . site_url("admin/settings/subject"));
  endif;

  elseif (!route(3)):

  if ($_POST):

      foreach ($_POST as $key => $value)
      {
$$key = $value;
      }

      if (empty($subject)):
$error = 1;
$errorText = "Please write a title.";
$icon = "error";
      else:

$insert = $conn->prepare("INSERT INTO ticket_subjects SET subject=:subject, content=:content, auto_reply=:auto_reply");

$insert = $insert->execute(array(
"subject" => $subject,
"content" => $content,
"auto_reply" => $auto_reply
));

if ($insert):
$success = 1;
$successText = "Transaction successful";
$referrer = site_url("admin/settings/subject");
else:
$error = 1;
$errorText = "Operation failed";
endif;
      endif;
  endif;

  $subjectList = $conn->prepare("SELECT * FROM ticket_subjects ORDER BY subject_id DESC ");
  $subjectList->execute(array());
  $subjectList = $subjectList->fetchAll(PDO::FETCH_ASSOC);

  elseif (route(3) == "delete"):
  $id = route(4);
  if (!countRow(["table" => "ticket_subjects", "where" => ["subject_id" => $id]])):
      $error = 1;
      $icon = "error";
      $errorText = "Please select valid payout bonus";
  else:
      $delete = $conn->prepare("DELETE FROM ticket_subjects WHERE subject_id=:id ");
      $delete->execute(array(
"id" => $id
      ));

      if ($delete):
$error = 1;
$icon = "success";
$errorText = "Transaction successful";
$referrer = site_url("admin/settings/subject");
      else:
$error = 1;
$icon = "error";
$errorText = "Operation failed";
      endif;
  endif;
  header("Location:" . site_url("admin/settings/subject"));
  exit();
  else:
  header("Location:" . site_url("admin/settings/subject"));
  endif;
        endif;
        if (route(5)):
  header("Location:" . site_url("admin/settings/subject"));
        endif;

    endif;

    require admin_view('settings');
    
