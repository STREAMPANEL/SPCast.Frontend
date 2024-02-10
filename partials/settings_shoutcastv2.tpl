<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                    data-content="{lang key='sp_spcast_settings_shoutcastv2_datacontent'}">
                </i> {lang key='sp_spcast_settings_shoutcastv2'}<br />
                <small>{lang key='sp_spcast_settings_shoutcastv2_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <div class="form-group">
                <label for="InputShoutcastAuthkey"><strong>{lang key='sp_spcast_settings_shoutcastv2_directory'}</strong></label>
                <input type="text" class="form-control" id="spSettingsShoutcastV2Authkey" aria-describedby="InputShoutcastAuthkey"
                    placeholder="{lang key='sp_spcast_settings_shoutcastv2_directory_placeholder'}" name="spSettingsShoutcastV2Authkey" value="{$spSettingsShoutcastV2Authkey}" />
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_shoutcastv2" value="{lang key='sp_spcast_settings_save'}" />
            </div>

        </div>
    </form>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_settings_shoutcastv2_authhash'}<br />
                <small>{lang key='sp_spcast_settings_shoutcastv2_authhash_desc'}</small>
            </h3>
        </div>
    </div>
    <div class="card-body">
        <h4>{lang key='sp_spcast_instructions'}</h4>
        <ul>
            <li>{lang key='sp_spcast_settings_shoutcastv2_authhash_register'} <a href="https://radiomanager.shoutcast.com/register/serverSoftwareFreemium" target="_blank"
                    rel="noopener">https://radiomanager.shoutcast.com/register/serverSoftwareFreemium</a></li>
            <li>{lang key='sp_spcast_settings_shoutcastv2_authhash_register2'}: <a href="https://radiomanager.shoutcast.com/" target="_blank" rel="noopener">https://radiomanager.shoutcast.com/</a>
            </li>
            <li>{lang key='sp_spcast_settings_shoutcastv2_authhash_register3'}</li>
        </ul>
    </div>
</div>