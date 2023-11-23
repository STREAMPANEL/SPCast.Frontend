<div id="xmlOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                IP-Adressen verbieten<br />
                <small>Sie können hier einzelne IP-Adressen den Zugriff auf Ihr Programm verbieten.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <ul class="nav nav-bold nav-pills">
                <li class="nav-item">
                    <a class="nav-link active" href="https://www.spcast.eu/faq/safeguard/sperren-von-ip-adressen/" target="_blank" rel="noopener">FAQ</a>
                </li>
            </ul>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">
            <div class="form-group">
                <label for="InputIPAddressDeny"><strong>IP-Adressen verbieten</strong></label>
                <small id="InputIPAddressDeny" class="form-text text-muted">Sie können hier beliebig viele IP-Adressen verbieten. Achten Sie unbedingt darauf keine Fehler zu machen. Diese Maske hat
                    bei falscher Nutzung das Potential Ihr System lahnzulegen. Lesen Sie auch die FAQ um zu verstehen, wie Sie IP-Adressen sperren können.</small><br />
                <textarea class="form-control" name="spSafeguardIPAddressDeny" id="spSafeguardIPAddressDeny" value="{$spSafeguardIPAddressDeny}"
                    placeholder="Lesen Sie die FAQ um zu verstehen wie diese Eingabemaske funktioniert." id="floatingTextarea2" style="height: 250px">{$spSafeguardIPAddressDeny}</textarea>
            </div>
        </div>
        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_safeguard_ipaddress_deny" value="Einstellungen speichern" />
            </div>
        </div>
    </form>

</div>