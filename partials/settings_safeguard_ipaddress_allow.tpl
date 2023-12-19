<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                IP-Adressen erlauben<br />
                <small>Sie können hier einzelnen IP-Adressen den Zugriff auf Ihr Programm erlauben.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <ul class="nav nav-bold nav-pills">
                <li class="nav-item">
                    <a class="nav-link active" href="https://www.spcast.eu/faq/safeguard/erlauben-von-ip-adressen/" target="_blank" rel="noopener">FAQ</a>
                </li>
            </ul>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">
            <div class="form-group">
                <h4>System absichern</h4>
                <p>Aktivieren Sie diese Option, um Ihr System komplett für jeglichen Zugriff zu sperren. In diesem Modus lässt Ihre Instanz ausschließlich die unten eingetragenen IP-Adressen auf Ihr
                    System zugreifen.
                </p>
                <div class="controls checkbox">
                    <label>
                        <input type="checkbox" name="spSafeguardClosedInstance" value="1" {if $spSafeguardClosedInstance} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                            data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Bevor Sie diese Option Aktivieren, stellen Sie unbedingt sicher, dass Sie Ihre eigene IP-Adresse in
                        der Liste unten eingetragen haben.
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label for="InputIPAddressAllow"><strong>IP-Adressen erlauben</strong></label>
                <small id="InputIPAddressAllow" class="form-text text-muted">Sie können hier beliebig viele IP-Adressen erlauben. Lesen Sie die FAQ um zu verstehen, weshalb es nötig sein kann eine
                    IP-Adresse zu erlauben.<br />
                    Bitte denken Sie daran, dass Sie als Privatkunde bei Ihren Internetanbieter meist keine feste IP-Adresse besitzen und diese sich ändern kann!</small><br />
                <textarea class="form-control" name="spSafeguardIPAddressAllow" id="spSafeguardIPAddressAllow" value="{$spSafeguardIPAddressAllow}"
                    placeholder="Lesen Sie die FAQ um zu verstehen wie diese Eingabemaske funktioniert." id="floatingTextarea2" style="height: 250px">{$spSafeguardIPAddressAllow}</textarea>
            </div>
        </div>
        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_safeguard_ipaddress_allow" value="Einstellungen speichern" />
            </div>
        </div>
    </form>

</div>