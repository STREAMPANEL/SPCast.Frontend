<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_settings_safeguard_ip_deny'}<br />
                <small>{lang key='sp_spcast_settings_safeguard_ip_deny_desc'}</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <ul class="nav nav-bold nav-pills">
                <li class="nav-item">
                    <a class="nav-link active" href="https://www.spcast.eu/faq/safeguard/sperren-von-ip-adressen/" target="_blank" rel="noopener">{lang key='sp_spcast_faq'}</a>
                </li>
            </ul>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">
            <div class="form-group">
                <label for="InputIPAddressDeny"><strong>{lang key='sp_spcast_settings_safeguard_ip_deny'}</strong></label>
                <small id="InputIPAddressDeny" class="form-text text-muted">{lang key='sp_spcast_settings_safeguard_ip_deny_desc2'}</small><br />
                <textarea class="form-control" name="spSafeguardIPAddressDeny" id="spSafeguardIPAddressDeny" value="{$spSafeguardIPAddressDeny}"
                    placeholder="{lang key='sp_spcast_settings_safeguard_ip_deny_placeholder'}" id="floatingTextarea2" style="height: 250px">{$spSafeguardIPAddressDeny}</textarea>
            </div>
        </div>
        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_safeguard_ipaddress_deny" value="{lang key='sp_spcast_settings_save'}" />
            </div>
        </div>
    </form>

</div>