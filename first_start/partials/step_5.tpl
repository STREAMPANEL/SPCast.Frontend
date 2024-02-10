<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_firststart'}<br />
                <small>{lang key='sp_spcast_firststart_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=905" role="form">
        <div class="card-body">
            <div class="form-group">
                <label for="InputUsername1"><strong>Username</strong></label>
                <input type="text" class="form-control" id="InputUsername1" aria-describedby="username1Help" placeholder="Geben Sie einen Usernamen ein. (Sie können dieses Feld nicht leer lassen.)"
                    required="required" name="spServerID1Username" value="{$spServerID1Username}" />
                <small id="username1Help" class="form-text text-muted">Geben Sie einen Usernamen ein.</small>
            </div>

            <div class="form-group">
                <label for="InputPasswort1"><strong>Passwort</strong></label>
                <input type="password" autocomplete="off" class="form-control" id="InputPasswort1" aria-describedby="passwort1Help"
                    placeholder="Geben Sie ein Passwort ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID1Password" value="{$spServerID1Password}" />
                <small id="passwort1Help" class="form-text text-muted">Geben Sie ein Passwort ein. Achten Sie unbedingt darauf, ein sicheres Passwort zu verwenden.</small>
            </div>
        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_firststart_serverpassword" value="{lang key='sp_spcast_go_next'}" />
            </div>
        </div>
    </form>
</div>