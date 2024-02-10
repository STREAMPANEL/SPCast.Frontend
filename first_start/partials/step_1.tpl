<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Radio: Name<br />
                <small>Geben Sie den Namen Ihres Webradio ein.</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">
            <div class="form-group">
                <label for="InputRadioName"><strong>Radio: Name</strong></label>
                <input type="text" class="form-control" id="spSettingsRadioName" aria-describedby="InputRadioName" placeholder="Geben Sie den Namen Ihres Webradio ein." required="required"
                    name="spSettingsRadioName" value="{$spSettingsRadioName}" />
            </div>
        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_firststart_radioname" value="Weiter" />
            </div>
        </div>
    </form>
</div>