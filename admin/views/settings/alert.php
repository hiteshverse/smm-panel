<div class="col-md-8">

  <div class="panel panel-default">

    <div class="panel-body">
        
      <form action="" method="post" enctype="multipart/form-data">

<label class="control-label">  Users Notifications</label>
<hr>
<div class="row">
          <div class="col-md-6 form-group">
            <label class="control-label">Welcome <div class="tooltip5">  <span class="fas fa-info-circle"></span><span class="tooltiptext5">Sent to new users when their account is created.</span></div>  </label>
            <select class="form-control" name="welcomemail">
              <option value="2" <?= $settings["alert_welcomemail"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_welcomemail"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>

          <div class="col-md-6 form-group">
            <label class="control-label">API key changed <div class="tooltip5">  <span class="fas fa-info-circle"></span><span class="tooltiptext5">Sent to users when their API key is changed</span></div> </label>
            <select class="form-control" name="apimail">
              <option value="2" <?= $settings["alert_apimail"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_apimail"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>

          <div class="col-md-6 form-group">
            <label class="control-label">New message <div class="tooltip5">  <span class="fas fa-info-circle"></span><span class="tooltiptext5">Sent to users when they receive a new message.</span></div> </label>
            <select class="form-control" name="newmessage">
              <option value="2" <?= $settings["alert_newmessage"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_newmessage"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>
</div>
<hr>
<label class="control-label">  Admin Notifications</label> 
   <hr>
     <div class="row">
          <div class="col-md-6 form-group">
            <label class="control-label">API balance notification</label>
            <select class="form-control" name="alert_apibalance">
              <option value="2" <?= $settings["alert_apibalance"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_apibalance"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>

          <div class="col-md-6 form-group">
            <label class="control-label">New support ticket notification</label>
            <select class="form-control" name="alert_newticket">
              <option value="2" <?= $settings["alert_newticket"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_newticket"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>

          <div class="col-md-6 form-group">
            <label class="control-label">New manual orders <div class="tooltip5">  <span class="fas fa-info-circle"></span><span class="tooltiptext5">Periodically sent to staff if new manual orders received.</span></div>  </label>
            <select class="form-control" name="alert_newmanuelservice">
              <option value="2" <?= $settings["alert_newmanuelservice"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_newmanuelservice"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>
          <div class="col-md-6 form-group">
            <label class="control-label">Fail orders <div class="tooltip5">  <span class="fas fa-info-circle"></span><span class="tooltiptext5">Periodically sent to staff if some orders got Fail status.</span></div> </label>
            <select class="form-control" name="orderfail">
              <option value="2" <?= $settings["alert_orderfail"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_orderfail"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>
          <div class="col-md-12 form-group">
            <label class="control-label">Service provider changed information</label>
            <select class="form-control" name="serviceapialert">
              <option value="2" <?= $settings["alert_serviceapialert"] == 2 ? "selected" : null; ?> >Enabled</option>
              <option value="1" <?= $settings["alert_serviceapialert"] == 1 ? "selected" : null; ?>>Disabled</option>
            </select>
          </div>
		 <div class="col-md-12 form-group">
            <label class="control-label">SMTP Email</label>
            <input type="text" class="form-control" name="admin_mail" value="<?=$settings["admin_mail"]?>">
			 
          </div>

      
        </div>
      <div class="row">
          <div class="form-group col-md-6">
            <label class="control-label">Email</label>
            <input type="text" class="form-control" name="smtp_user" value="<?=$settings["smtp_user"]?>">
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Email password</label>
            <input type="text" class="form-control" name="smtp_pass" value="<?=$settings["smtp_pass"]?>">
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">SMTP Server</label>
            <input type="text" class="form-control" name="smtp_server" value="<?=$settings["smtp_server"]?>">
          </div>
          <div class="form-group col-md-3">
            <label class="control-label">SMTP Port</label>
            <input type="text" class="form-control" name="smtp_port" value="<?=$settings["smtp_port"]?>">
          </div>
          <div class="col-md-3 form-group">
            <label class="control-label">SMTP Protocol</label>
            <select class="form-control" name="smtp_protocol">
              <option value="0" <?= $settings["smtp_protocol"] == 0 ? "selected" : null; ?> >None</option>
              <option value="tls" <?= $settings["smtp_protocol"] == "tls" ? "selected" : null; ?>>TLS</option>
              <option value="ssl" <?= $settings["smtp_protocol"] == "ssl" ? "selected" : null; ?>>SSL</option>
            </select>
          </div>
        </div>
 <button type="submit" class="btn btn-primary">Update Settings</button>
      
    
            </table>
        </div>
    </div>

</form>
</div>
  </div>
</div>