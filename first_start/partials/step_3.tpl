<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_firststart'}<br />
                <small>{lang key='sp_spcast_firststart_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=903" role="form">
        <div class="card-body">
            <div class="form-group">
                <label for="InputRadioGenre"><strong>>{lang key='sp_spcast_settings_webradio_genre'}</strong></label>
                <input type="text" class="form-control" id="spSettingsRadioGenre" aria-describedby="InputRadioGenre" placeholder="{lang key='sp_spcast_settings_webradio_genre_placeholder'}"
                    required="required" name="spSettingsRadioGenre" value="{$spSettingsRadioGenre}" />
                <small id="InputRadioGenre" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_genre_desc'}</small>
            </div>
        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_firststart_radio_genre" value="{lang key='sp_spcast_go_next'}" />
            </div>
        </div>
    </form>
</div>