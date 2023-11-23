<div id="xmlOutput"></div>

<div class="alert alert-danger" role="alert">
    Die optionalen Systeme stehen Ihnen nur zur Abwärtskompatibilität zur Verfügung. Bitte verwenden Sie diese Hörverweise nur für eventuell vorhandene Skripte auf Ihrer Webseite oder für die
    Eintragung in Icecast- oder Shoutcast-Verzeichnisse. Verteilen Sie diese Hörverweise niemals eigenständig an anderen Orten.
</div>

<!-- Testserver / Based on Icecast KH -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}:8100/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="Server ist Online" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="Server ist Offline" />
                        </span>
                    {/if}
                    <h3 class="card-label text-white">
                        SPCast (Testserver)<br />
                        <small>Nutzen Sie diesen Server ausschließlich für interne Tests.</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast2information">
                        <i class="flaticon2-cube"></i> Informationen
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption1()">
                        Server Neustarten
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>Hostname / IP:</strong> {$spHostname}<br />
                        <strong>Port:</strong> 8100<br />
                        <strong>Bitrate:</strong> 320 Kbit/s<br />
                        <strong>Slots:</strong> 10
                    </div>
                    <div class="col-sm-6">
                        <strong>Abspieladresse:</strong> https://{$spHostname}:8100/stream<br />
                        <strong>HTML 5 Player:</strong> https://{$spHostname}:8100/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8100/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTP
                            aufrufen</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8100/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTPs
                            aufrufen</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zu den Zugangsdaten"
                            data-content="Ihr Testserver verfügt ausschließlich über die angezeigten Zugangsdaten. Es können keine weiteren Daten erstellt werden. Darüber hinaus ist dieser Server nur mit einem Icecast V2-KH-kompatiblen Broadcaster nutzbar.">
                        </i>
                        Testserver Daten
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast2changedata">
                        <i class="flaticon2-cube"></i> Daten ändern
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <h4>Icecast V2, KH Broadcaster</h4>
                <strong>IP / Hostname:</strong> {$spHostname}<br />
                <strong>Port:</strong> 8100<br />
                <strong>Bitrate:</strong> 320 Kbit/s<br />
                <strong>Mountpoint:</strong> /stream<br />
                <strong>Username:</strong> {$spServerID2Username}<br />
                <strong>Passwort:</strong> {$spServerID2Password}
            </div>
        </div>
    </div>
</div>

<!-- Icecast V2 -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <!--{assign var="urlToCheck" value="https://{$spHostname}:8120/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="Server ist Online" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="Server ist Offline" />
                        </span>
                    {/if}-->
                    <h3 class="card-label text-white">
                        Icecast V2<br />
                        <small>Sie können diesen Server für Ihre Skripte verwenden oder ihn in Icecast V2-kompatiblen Verzeichnissen auflisten lassen.</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast4information">
                        <i class="flaticon2-cube"></i> Informationen
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption3()">
                        Server Neustarten
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>Hostname / IP:</strong> {$spHostname}<br />
                        <strong>Port:</strong> 8120 HTTPs / 8122 HTTP<br />
                        <strong>Bitrate:</strong> 320 Kbit/s<br />
                        <strong>Slots:</strong> 100
                    </div>
                    <div class="col-sm-6">
                        <strong>Abspieladresse:</strong> https://{$spHostname}:8120/stream<br />
                        <strong>HTML 5 Player:</strong> https://{$spHostname}:8120/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8122/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTP
                            aufrufen</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8120/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTPs
                            aufrufen</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        Icecast V2 Daten zur Abfrage
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zur Datenabfrage"
                            data-content="Sie können mit diesen Daten sämtliche Inhalte des Streamservers abfragen, wenn Sie ein Icecast V2-kompatibles Skript verwenden. Diese Daten sind ausschließlich für die Datenabfrage gültig und können nicht zum Live-Senden im Broadcaster verwendet werden.">
                        </i>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast4changedata">
                        <i class="flaticon2-cube"></i> Daten ändern
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <strong>IP / Hostname:</strong> {$spHostname}<br />
                <strong>Port:</strong> 8122 HTTP &amp; 8120 HTTPs<br />
                <strong>Bitrate:</strong> 320 Kbit/s<br />
                <strong>Mountpoint:</strong> /stream<br />
                <strong>Username:</strong> {$spServerID4Username}<br />
                <strong>Passwort:</strong> {$spServerID4Password}
            </div>
        </div>
    </div>
</div>

<!-- Shoutcast V2 -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}:8130/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="Server ist Online" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="Server ist Offline" />
                        </span>
                    {/if}
                    <h3 class="card-label text-white">
                        Shoutcast V2<br />
                        <small>Sie können diesen Server für Ihre Skripte verwenden oder ihn in Shoutcast-kompatiblen Verzeichnissen auflisten lassen.</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast5information">
                        <i class="flaticon2-cube"></i> Informationen
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption4()">
                        Server Neustarten
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>Hostname / IP:</strong> {$spHostname}<br />
                        <strong>Port:</strong> 8130<br />
                        <strong>Bitrate:</strong> 320 Kbit/s<br />
                        <strong>Slots:</strong> 100
                    </div>
                    <div class="col-sm-6">
                        <strong>Abspieladresse:</strong> https://{$spHostname}:8130/stream<br />
                        <strong>HTML 5 Player:</strong> https://{$spHostname}:8130/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8130/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTP
                            aufrufen</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8130/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTPs
                            aufrufen</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zur Datenabfrage"
                            data-content="Sie können mit diesen Daten sämtliche Inhalte des Streamservers abfragen, wenn Sie ein Shoutcast V2-kompatibles Skript verwenden. Diese Daten sind nur für die Datenabfrage gültig und können nicht zum Live-Senden im Broadcaster verwendet werden.">
                        </i>
                        Shoutcast V2 Daten zur Abfrage
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast5changedata">
                        <i class="flaticon2-cube"></i> Daten ändern
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <strong>IP / Hostname:</strong> {$spHostname}<br />
                <strong>Port:</strong> 8130<br />
                <strong>Bitrate:</strong> 320 Kbit/s<br />
                <strong>Mountpoint:</strong> /stream<br />
                <strong>Username:</strong> {$spServerID5Username}<br />
                <strong>Passwort:</strong> {$spServerID5Password}
            </div>
        </div>
    </div>
</div>

<!-- Icecast KH -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}:8110/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="Server ist Online" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="Server ist Offline" />
                        </span>
                    {/if}
                    <h3 class="card-label text-white">
                        Icecast KH<br />
                        <small>Nutzen Sie diesen Server nur für eventuell vorhandene Skripte.</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast3information">
                        <i class="flaticon2-cube"></i> Informationen
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption2()">
                        Server Neustarten
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>Hostname / IP:</strong> {$spHostname}<br />
                        <strong>Port:</strong> 8110<br />
                        <strong>Bitrate:</strong> 320 Kbit/s<br />
                        <strong>Slots:</strong> 5
                    </div>
                    <div class="col-sm-6">
                        <strong>Abspieladresse:</strong> https://{$spHostname}:8110/stream<br />
                        <strong>HTML 5 Player:</strong> https://{$spHostname}:8110/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8110/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTP
                            aufrufen</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8110/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTPs
                            aufrufen</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zur Datenabfrage"
                            data-content="Sie können mit diesen Daten sämtliche Inhalte des Streamservers abfragen, wenn Sie ein Icecast KH-kompatibles Skript verwenden. Diese Daten sind ausschließlich für die Datenabfrage gültig und können nicht zum Live-Senden im Broadcaster verwendet werden.">
                        </i>
                        Icecast KH Daten zur Abfrage
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast3changedata">
                        <i class="flaticon2-cube"></i> Daten ändern
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <strong>IP / Hostname:</strong> {$spHostname}<br />
                <strong>Port:</strong> 8110<br />
                <strong>Bitrate:</strong> 320 Kbit/s<br />
                <strong>Mountpoint:</strong> /stream<br />
                <strong>Username:</strong> {$spServerID3Username}<br />
                <strong>Passwort:</strong> {$spServerID3Password}
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        Weitere Integrationen / Werbevermarkter
                    </h3>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <h4>Weitere Integrationen</h4>
                <p>SPCast wurde von uns modular entwickelt und kann entsprechend erweitert werden. Wenn Sie also eine Integration benötigen, melden Sie sich bei uns!</p>

                <h4>Werbevermarkter</h4>
                <p>Prinzipiell stehen wir Ihnen nicht im Weg, wenn Sie mit einem Werbenetzwerk in Kontakt sind und Ihren Sender vermarkten möchten. Informieren Sie sich darüber, was Sie benötigen, und
                    melden Sie sich dann bei uns.</p>

                <h5>Audimark / AudioCC</h5>
                <p>Audimark / AudioCC ist bereits in die Plattform integriert. Der Werbevermarkter verwendet eine eigene Icecast V2 / KH-Version. Sobald Sie mit diesem Werbevermarkter einen Vertrag
                    abgeschlossen haben, eröffnen Sie ein Supportticket, und wir ändern Ihren Hauptserver auf die Version des Werbevermarkters.<br />
                    Bitte beachten Sie, dass beim Einsatz von Icecast Server als Hauptsystem einige Funktionen in der SPCast-Umgebung entfallen.</p>

                <h5>Radio Marketing Service (RMS)</h5>
                <p>RMS verlangt von Plattformbetreibern wie uns auf unerklärliche Weise eine nicht zu unterschätzende Summe für die einmalige Integration. Wir sind nicht bereit, diese Kosten zu
                    tragen!
                    Falls es für Sie keinen anderen Ausweg gibt als das Werbenetzwerk von RMS, müssen Sie uns zum jetzigen Zeitpunkt leider verlassen oder RMS auf die Werbeschnittstelle Ihres
                    Streamservers hinweisen.</p>

                <h5>SPCast Werbeschnittstelle</h5>
                <p>Generell sollten Sie etwaige Werbevermarkter auf die direkte Schnittstelle Ihres SPCast Streamservers hinweisen. Diese Schnittstelle stellt eine zeitgemäße und moderne Technik auf
                    dem aktuellen Stand der Technik dar. (<a href="#">Link fehlt</a>)</p>
            </div>
        </div>
    </div>
</div>