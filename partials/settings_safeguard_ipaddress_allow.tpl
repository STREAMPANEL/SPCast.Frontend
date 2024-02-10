<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_settings_safeguard_ip_allow'}<br />
                <small>{lang key='sp_spcast_settings_safeguard_ip_allow_desc'}</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <ul class="nav nav-bold nav-pills">
                <li class="nav-item">
                    <a class="nav-link active" href="https://www.spcast.eu/faq/safeguard/erlauben-von-ip-adressen/" target="_blank" rel="noopener">{lang key='sp_spcast_faq'}</a>
                </li>
            </ul>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">
            <div class="form-group">
                <h4>{lang key='sp_spcast_settings_safeguard_ip_allow_secure'}</h4>
                <p>{lang key='sp_spcast_settings_safeguard_ip_allow_secure_desc'}
                </p>
                <div class="controls checkbox">
                    <label>
                        <input type="checkbox" name="spSafeguardClosedInstance" value="1" {if $spSafeguardClosedInstance} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                            data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_safeguard_ip_allow_secure_attention'}
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label for="InputIPAddressAllow"><strong>{lang key='sp_spcast_settings_safeguard_ip_allow'}</strong></label>
                <small id="InputIPAddressAllow" class="form-text text-muted">{lang key='sp_spcast_settings_safeguard_ip_allow_desc2'}<br /><br />
                    <strong>{lang key='sp_spcast_settings_safeguard_ip_allow_desc3'}</strong></small><br />
                <textarea class="form-control" name="spSafeguardIPAddressAllow" id="spSafeguardIPAddressAllow" value="{$spSafeguardIPAddressAllow}"
                    placeholder="{lang key='sp_spcast_settings_safeguard_ip_allow_mask_placeholder'}" id="floatingTextarea2" style="height: 250px">{$spSafeguardIPAddressAllow}</textarea>
            </div>
        </div>
        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_safeguard_ipaddress_allow" value="{lang key='sp_spcast_settings_save'}" />
            </div>
        </div>
    </form>

</div>