<div id="xmlOutput"></div>

{if $spAudioCCModus == "1"}
    <div class="alert alert-danger" role="alert">
        <strong>AudioCC wurde erkannt:</strong> Die Funktion der DJ-Accounts wird prinzipiell unterstützt. Bitte beachten Sie jedoch, dass Sie zwingend einen Icecast V2 Broadcaster nutzen
        müssen. Im Normalfall würden Sie nahezu latenzfrei senden. Da der Einsatz des Icecast Servers wieder Latenzzeiten mit sich bringt, empfehlen wir Ihnen, sich auf die DJ-Accounts
        direkt in der AutoDJ-Verwaltung zu beschränken.
    </div>
{/if}

{if empty($get_access_management_active)}
    <div class="alert alert-danger" role="alert">
        Bisher wurde kein DJ-Account für Sie angelegt. Um Ihren ersten Account anzulegen, navigieren Sie bitte in der unten stehenden Tabelle zu "Inaktive Accounts" und bearbeiten Sie dort einen Account
        Ihrer Wahl. Alternativ zu dieser Umgebung stehen Ihnen auch Legacy Accounts im AutoDJ zur Verfügung, die ebenfalls eine Shoutcast V1 Source unterstützen. Beachten Sie jedoch, dass beim Einsatz der
        Legacy Accounts mit einer erhöhten Latenz beim Senden zu rechnen ist.
    </div>
{/if}

<div class="alert alert-danger" role="alert">
    <strong>Alte Broadcaster:</strong> Wenn Sie eine ältere Version von einen Broadcaster verwenden, die keine Shoutcast V2- oder Icecast V2-Verbindungen unterstützen, müssen diese Moderatoren auf die
    Moderatorenkonten direkt im AutoDJ zurückgreifen. Alternativ können Sie Ihren Broadcaster auf eine Version aktualisieren, die Shoutcast V2- oder Icecast V2-Verbindungen unterstützt. Der Einsatz
    dieser Modernen Verbindungen ist immer die empfohlene Variante. Das ältere Protokoll aus dem AutoDJ, bringt unnötige Latenzen und weitere Nachteile mit sich.
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Shoutcast V2 / Icecast V2 Broadcaster
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                    data-content="Die hier erstellten Daten funktionieren ausschließlich mit Icecast V2 / Shoutcast V2 Broadcaster. Wenn Sie Zugangsdaten im alten Shoutcast V1 Format benötigen, loggen Sie sich in Ihren AutoDJ ein und verwenden Sie die dortigen DJ-Accounts.<br/><br/>Denken Sie immer daran, dass die Zugangsdaten auf dieser Seite erst funktionieren wenn Sie die Daten über den Button 'Änderungen in alle Server übernehmen' übernommen haben.">
                </i><br />
                <small>Erstellen Sie Zugangsdaten, mit denen sich Ihre Moderatoren zum Streamserver verbinden können.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <ul class="nav nav-bold nav-pills">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#sp_pane_1">Aktive Accounts</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#sp_pane_2">Inaktive Accounts</a>
                </li>
            </ul>
            <div class="dropdown dropdown-inline mr-2">
                <button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="svg-icon svg-icon-md">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <rect x="0" y="0" width="24" height="24" />
                                <path
                                    d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z"
                                    fill="#000000" opacity="0.3" />
                                <path
                                    d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z"
                                    fill="#000000" />
                            </g>
                        </svg>
                    </span>{lang key='sp_tableexport'}</button>
                <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                    <ul class="navi flex-column navi-hover py-2">
                        <li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">
                            {lang key='sp_export_options'}</li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_print">
                                <span class="navi-icon">
                                    <i class="la la-print"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_print'}</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_copy">
                                <span class="navi-icon">
                                    <i class="la la-copy"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_copy'}</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_excel">
                                <span class="navi-icon">
                                    <i class="la la-file-excel-o"></i>
                                </span>
                                <span class="navi-text">Excel</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_csv">
                                <span class="navi-icon">
                                    <i class="la la-file-text-o"></i>
                                </span>
                                <span class="navi-text">CSV</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_pdf">
                                <span class="navi-icon">
                                    <i class="la la-file-pdf-o"></i>
                                </span>
                                <span class="navi-text">PDF</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="tab-content">
        <div class="tab-pane fade show active" id="sp_pane_1" role="tabpanel" aria-labelledby="sp_pane_1">
            <div class="card-body">
                {include file="modules/addons/SPStreamserverManagement/templates/partials/access_management_active.tpl"}
            </div>
        </div>

        <div class="tab-pane fade" id="sp_pane_2" role="tabpanel" aria-labelledby="sp_pane_2">
            <div class="card-body">
                {include file="modules/addons/SPStreamserverManagement/templates/partials/access_management_inactive.tpl"}
            </div>
        </div>
    </div>
</div>

{if $spAudioCCModus == "0"}
    <div class="card card-custom sp-margin-bottom">
        <div class="card-header border-0 sp-bg-dark">
            <div class="card-title">
                <h3 class="card-label text-white">
                    Tools für Ihre Moderatoren<br />
                    <small>Die folgenden Hinweise und Skripte können für Sie unter Umständen nützlich sein.</small>
                </h3>
            </div>
        </div>
        <div class="card-body">
            <h4>Zuhörer verschieben</h4>
            <p>Im Normalfall verbindet Ihr Streamserver Ihre aktiven Hörer automatisch mit der nächsten Livesource. Da Übergaben jedoch überall anders gehandhabt werden, steht Ihnen zusätzlich dieses Tool
                zur Verfügung. Es ermöglicht Ihnen, vorhandene Zuhörer auf einen anderen Mountpoint zu verschieben. Dies kann z. B. bei DJ-Übergaben nötig sein, wenn sich mehrere DJ-Accounts auf einmal
                verbinden.</p>

            <form class="form">
                <div class="card-body">
                    <div class="form-group row">
                        <div class="col-lg-6">
                            <label>Von Mountpoint</label>
                            <input type="text" class="form-control" id="spDJFromMountpoint" name="spDJFromMountpoint" placeholder="Beispiel: dj01" required="required" />
                            <span class="form-text text-muted">Geben Sie den Ursprung der Zuhörer ein. Ohne /</span>
                        </div>
                        <div class="col-lg-6">
                            <label>Nach Mountpoint</label>
                            <input type="text" class="form-control" id="spDJToMountpoint" name="spDJToMountpoint" placeholder="Beispiel: dj02" required="required" />
                            <span class="form-text text-muted">Geben Sie das Ziel der Zuhörer ein. Ohne /</span>
                        </div>
                    </div>

                    <div class="row col-xl-12">
                        <input type="submit" class="btn btn-success btn-block" name="submit_dj_movelisteners" value="Zuhörer jetzt verschieben" />
                    </div>
                </div>
                <div class="card-footer">
                    <h4>API</h4>
                    <p>Sie können diese URL in Ihre Webseite einbinden oder an Ihre Moderatoren verteilen, ohne Ihren Admin-Benutzernamen und Ihr Passwort bekannt zu geben. Seien Sie jedoch stets
                        vorsichtig. Jeder, der über die richtigen Token verfügt, kann Ihre Zuhörer nach Belieben verschieben. Wir führen keine Protokolle über die Nutzung. Wenn Sie sich unsicher sind,
                        ändern Sie daher bitte Ihren Token in den Einstellungen!</p>
                    <p>https://login.streampanel.net/spapi/spcast/moveListeners.php?url={$spHostname}&token={$spDJMoveListenersToken}&from=<span style="color: red;">URSPRUNG</span>&dest=<span
                            style="color: red;">ZIEL</span></p>
                </div>
            </form>

        </div>
    </div>
{/if}