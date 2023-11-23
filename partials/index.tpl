{if $spSettingsTranscoder256 == '0' || $spSettingsTranscoder256 == '1'}{else}
    <div class="row">
        <div class="col-sm-12 sp-margin-bottom">
            <div class="alert alert-danger" role="alert">
                <strong>ACHTUNG:</strong> Bevor Sie das Update anwenden klicken Sie links im Menü bei den Einstellungen auf "Transkoder" und Speichern die Einstellungen einmalig.
            </div>
        </div>
    </div>
{/if}

{if $spSettingsLoadBalancerAggregateStatistic == '0' || $spSettingsLoadBalancerAggregateStatistic == '1'}{else}
    <div class="row">
        <div class="col-sm-12 sp-margin-bottom">
            <div class="alert alert-danger" role="alert">
                <strong>ACHTUNG:</strong> Bevor Sie das Update anwenden klicken Sie links im Menü bei den Einstellungen auf "LoadBalancer" und Speichern die Einstellungen einmalig.
            </div>
        </div>
    </div>
{/if}

{if $spIsAudioCCUser == "1"}
    <div class="alert alert-danger" role="alert">
        <strong>AudioCC wurde erkannt:</strong> Sie nutzen einen AudioCC-Server. Wir befinden uns in einer frühen Version der neuen SPCast-Verwaltung. Aufgrund des erzwungenen Einsatzes eines
        IceCast-Servers stehen AudioCC-Nutzern bestimmte Funktionen nicht zur Verfügung. In einer späteren Version werden wir den Werbeanbietern eine Schnittstelle für den SPCast-Streamserver zur
        Verfügung stellen. Ob diese jedoch in der Lage oder bereit sind, diese anzunehmen, hängt von Ihren Werbeanbietern ab! Wenn Sie am vollen Dashboard interessiert sind, schalten Sie in den
        Einstellungen den AudioCC-Modus ab!
    </div>
{/if}

{if $spServerID1Password == "spMustChangeFirst" && !empty($spSettingsRadioName)}
    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast1changedata">
        <div class="alert alert-danger" role="alert">
            Um die Umgebung startbereit zu machen, müssen Sie das Passwort für den Hauptserver festlegen und anschließend den Hauptserver neu starten.<br /><br />
            Bitte beachten Sie, dass Sie sämtliche Einstellungen im Kundencenter immer ohne Beeinträchtigung Ihres Programmes vornehmen können. Damit neu angelegte Daten oder Einstellungen funktionieren,
            müssen Sie
            abschließend immer den obigen Button "Änderungen in alle Server übernehmen" betätigen. Dieser Prozess startet Ihre Umgebung nach 2-3 Minuten automatisch neu. Daher empfehlen wir Ihnen, dies
            während des Produktivbetriebs zu einer Uhrzeit zu erledigen, bei der Sie Ihre Zuhörer nicht verärgern.
        </div>
    </a>
{/if}

{if $spSettingsRadioName == ""}
    <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=6">
        <div class="alert alert-danger" role="alert">
            Sie müssen die SPCast-Einstellungen einmal durchgehen, um Ihre Umgebung nutzen zu können.
        </div>
    </a>
{/if}

<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

{if $spUserVersion != $spActualVersion && !empty($spSettingsRadioName)}
    <div class="alert alert-danger" role="alert">
        <strong>Neue Version vorhanden:</strong> Es gibt eine neue Version. Sie sollten zu einem Zeitpunkt Ihrer Wahl Ihre Umgebung über den Button "Änderungen in alle Server übernehmen" aktualisieren.
        Denken Sie auch daran, dass dieser Prozess Ihre Hörer kurzzeitig trennen wird. Technische Informationen finden Sie immer hier: <a href="https://www.streampanel.net/changelog/spcast/"
            target="_blank" rel="noopener">https://www.streampanel.net/changelog/spcast/</a>
    </div>
{/if}

<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="Server ist Online" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="Server ist Online" />
                        </span>
                    {/if}
                    <h3 class="card-label text-white">
                        {if $spAudioCCModus == "0"}
                            SPCast (Hauptserver)
                        {else}
                            AudioCC (Hauptserver)
                        {/if}
                    </h3>
                </div>
                <div class="card-toolbar">
                    <div class="btn-group">
                        <button class="btn btn-primary font-weight-bold btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="flaticon2-cube"></i> Optionen
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#" onclick="loadXMLOption1()">Streamserver Neustarten</a>
                            <a class="dropdown-item" href="#" onclick="loadXMLOption2()">Transcoder Neustarten</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" onclick="loadXMLOption3()">Alle Streamserver Neustarten</a>
                            <a class="dropdown-item" href="#" onclick="loadXMLOption4()">Instanz Reboot (Nur im Notfall)</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" onclick="change_mainserver()">Änderungen im Hauptserver übernehmen</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>Hostname:</strong> {$spHostname}<br />
                        <strong>Port:</strong> 80 (HTTP) / 443 (HTTPS)<br />
                        <!--<strong>Slots:</strong> 100<br />-->
                        <strong>Bitrate:</strong> 320 Kbit/s
                    </div>
                    <div class="col-sm-6">
                        {if $spCNAMELoadBalancer}
                            <strong>Abspieladresse (Loadbalancer):</strong> https://{$spCNAMELoadBalancer}/stream<br />
                        {else}
                            <strong>Abspieladresse (Loadbalancer):</strong> https://{$spHostnameLoadbalancer}/stream<br />
                        {/if}
                        {if $spAudioCCModus == "0"}
                            {if $spCNAMELoadBalancer}
                                <strong>HTML 5 Player:</strong> https://{$spCNAMELoadBalancer}/<br />
                            {else}
                                <strong>HTML 5 Player:</strong> https://{$spHostnameLoadbalancer}/<br />
                            {/if}
                        {/if}
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-sm-12">
                    {if $spCNAMELoadBalancer}
                        <div class="col-sm-6">
                            <a href="http://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTP
                                aufrufen</a>
                        </div>
                        <div class="col-sm-6">
                            <a href="https://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTPs
                                aufrufen</a>
                        </div>
                    {else}
                        <div class="col-sm-6">
                            <a href="http://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTP
                                aufrufen</a>
                        </div>
                        <div class="col-sm-6">
                            <a href="https://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">HTTPs
                                aufrufen</a>
                        </div>
                    {/if}
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
                            data-content="Mit diesen Daten können Sie sich jederzeit mit dem Streamserver verbinden. Sie haben die Möglichkeit, sich zu jedem Zeitpunkt zu verbinden, auch wenn ein Moderator bereits mit seinen eigenen Zugangsdaten auf Sendung ist. Daher ist es besonders wichtig, diese Daten vertraulich zu behandeln und sicher aufzubewahren.">
                        </i>
                        Aktuelle Serverdaten<br />
                        <small>Hierbei handelt es sich um Ihre Hauptdaten zur Verbindung mit dem Streamserver.</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast1changedata">
                        <i class="flaticon2-cube"></i> Daten ändern
                    </a>
                    <div class="btn-group">
                        <button class="btn btn-primary font-weight-bold btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="flaticon2-cube"></i> Broadcaster Hilfe
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="https://www.spcast.eu/faq/broadcaster/wie-richte-ich-einen-encoder-in-mairlist-fuer-mein-webradio-ein/" target="_blank"
                                rel="noopener">mAirlist Broadcaster</a>
                            <a class="dropdown-item" href="https://www.spcast.eu/faq/broadcaster/so-richten-sie-einen-encoder-in-radioboss-fuer-ihr-webradio-ein/" target="_blank"
                                rel="noopener">RadioBOSS Broadcaster</a>
                            <a class="dropdown-item" href="https://www.spcast.eu/faq/broadcaster/wie-richte-ich-einen-encoder-in-sam-broadcaster-ein/" target="_blank" rel="noopener">SAM
                                Broadcaster</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Icecast V2{if $spAudioCCModus == "0"} / Shoutcast V2 Broadcaster{/if}</h4>
                        <strong>IP / Hostname:</strong> {$spHostname}<br />
                        <strong>Port:</strong> 80 oder {if $spAudioCCModus == "0"}8150{else}8140{/if}<br />
                        <strong>Mountpoint:</strong> /stream_live<br />
                        <strong>Username:</strong> {$spServerID1Username}<br />
                        <strong>Passwort:</strong> {if $spServerID1Password eq 'spMustChangeFirst'}<font color="red">Ändern Sie zuerst das Passwort!</font>{else}{$spServerID1Password}{/if}
                    </div>
                    <div class="col-sm-6">
                        <h4>Alternative Sendedaten</h4>
                        {if $spAudioCCModus == "0"}
                            Rufen Sie die Zugangsverwaltung auf, um für Ihre Moderatoren zusätzliche Zugangsdaten anzulegen. Legen Sie Zugangsdaten im Shoutcast V1-Format direkt im AutoDJ an.
                        {else}
                            Basierend auf Ihrer Umgebung empfehlen wir Ihnen, sich auf die DJ-Accounts direkt im AutoDJ zu beschränken.
                        {/if}<br /><br />
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=3" class="btn btn-light-primary btn-block">Zugangsverwaltung
                                    aufrufen</a>
                            </div>
                            <div class="col-sm-6">
                                <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=201" class="btn btn-light-primary btn-block">AutoDJ
                                    aufrufen</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom" id="sp_card">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                            data-content="SPCast setzt voraus, dass Sie mit einer Bitrate von 320 Kbit/s senden. Falls Sie aus irgendeinem Grund mit einer niedrigeren Bitrate, wie zum Beispiel 128 Kbit/s, senden, werden die Umwandlungen auf 192, 256 und 320 Kbit/s natürlich nicht funktionieren.">
                        </i>
                        Ihr Sender im Netz
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <h4>Daten für Ihre Webseite & externe Plattformen</h4>
                Folgende Verweise sind für den Player, die Webseite und sämtliche externen Plattformen gültig.<br /><br />
                <div class="row">
                    <div class="col-sm-6 sp-margin-bottom">
                        <h6>320 Kbits / MP3</h6>
                        {if $spCNAMELoadBalancer}
                            <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream</a><br />
                            <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream</a><br />
                        {else}
                            <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream</a><br />
                            <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream</a><br />
                        {/if}
                        {if $spAudioCCModus == "0"}
                            {if $spCNAMELoadBalancer}
                                <strong>HLS (AutoDJ):</strong> <a href="https://{$spCNAMELoadBalancer}/autodj.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/autodj.hls</a><br />
                                <strong>HLS (Livesendung):</strong> <a href="https://{$spCNAMELoadBalancer}/live.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/live.hls</a><br />
                                <strong>HLS (Automatische Erkennung):</strong> <a href="https://{$spCNAMELoadBalancer}/stream.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream.hls</a>
                            {else}
                                <strong>HLS (AutoDJ):</strong> <a href="https://{$spHostnameLoadbalancer}/autodj.hls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/autodj.hls</a><br />
                                <strong>HLS (Livesendung):</strong> <a href="https://{$spHostnameLoadbalancer}/live.hls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/live.hls</a><br />
                                <strong>HLS (Automatische Erkennung):</strong> <a href="https://{$spHostnameLoadbalancer}/stream.hls" target="_blank"
                                    rel="noopener">https://{$spHostnameLoadbalancer}/stream.hls</a>
                            {/if}
                        {/if}
                    </div>
                    {if $spSettingsTranscoder256 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>256 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream256" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream256</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream256" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream256</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream256" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream256</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream256" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream256</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder192 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>192 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream192" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream192</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream192" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream192</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream192" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream192</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream192" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream192</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder128 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>128 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream128" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream128</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream128" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream128</a><br />
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream128" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream128</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream128" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream128</a><br />
                            {/if}
                            {if $spAudioCCModus == "0"}
                                {if $spCNAMELoadBalancer}
                                    <strong>HLS:</strong> <a href="https://{$spCNAMELoadBalancer}/stream128.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream128.hls</a>
                                {else}
                                    <strong>HLS:</strong> <a href="https://{$spHostnameLoadbalancer}/stream128.hls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream128.hls</a>
                                {/if}
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder96 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>96 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream96" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream96</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream96" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream96</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream96" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream96</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream96" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream96</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder64 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>64 Kbits / AAC</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream64" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream64</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream64" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream64</a><br />
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream64" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream64</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream64" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream64</a><br />
                            {/if}
                            {if $spAudioCCModus == "0"}
                                {if $spCNAMELoadBalancer}
                                    <strong>HLS:</strong> <a href="https://{$spCNAMELoadBalancer}/stream64.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream64.hls</a>
                                {else}
                                    <strong>HLS:</strong> <a href="https://{$spHostnameLoadbalancer}/stream64.hls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream64.hls</a>
                                {/if}
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder48 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>48 Kbits / AAC</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream48" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream48</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream48" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream48</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream48" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream48</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream48" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream48</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder32 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>32 Kbits / AAC</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream32" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream32</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream32" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream32</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream32" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream32</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream32" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream32</a>
                            {/if}
                        </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom" id="sp_card">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                            data-content="Es gibt keine Gegebenheiten, Player oder Einbindungen, die nicht unterstützt werden! Falls die hier aufgeführten Möglichkeiten nicht ausreichen sollten, kontaktieren Sie uns bitte und wir werden entsprechende Verbesserungen vornehmen.">
                        </i>
                        Weitere Verweise zum Sender
                    </h3>
                </div>
            </div>
            <div class="card-body">
                Je nach Einsatzgebiet können die folgenden Verweise nützlich sein.<br /><br />
                {if $spAudioCCModus == "0"}
                    {if $spCNAMELoadBalancer}
                        <strong>HTML 5 Player:</strong> <a href="https://{$spCNAMELoadBalancer}/" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/</a><br /><br />
                    {else}
                        <strong>HTML 5 Player:</strong> <a href="https://{$spHostnameLoadbalancer}/" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/</a><br /><br />
                    {/if}
                {/if}
                {if $spCNAMELoadBalancer}
                    <strong>Winamp / iTunes:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.pls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.pls</a><br />
                    <strong>Windows Media Player:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.asx" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.asx</a><br />
                    <strong>Real Player:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.ram" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.ram</a><br />
                    <strong>QuickTime:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.qtl" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.qtl</a><br />
                    <strong>XSPF:</a></strong> <a href="https://{$spCNAMELoadBalancer}/listen.xspf" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.xspf</a><br /><br />
                    <h6>Externe Plattformen</h6>
                    Der folgende Verweis ist für externe Plattformen wie SPRadio.eu oder Radio.de vorgesehen.<br />
                    Alternativ können Sie auch verschiedene Bandbreiten auf solchen Plattformen verteilen.<br /><br />
                    <strong>Player:</strong> <a href="https://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream</a><br /><br />
                {else}
                    <strong>Winamp / iTunes:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.pls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.pls</a><br />
                    <strong>Windows Media Player:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.asx" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.asx</a><br />
                    <strong>Real Player:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.ram" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.ram</a><br />
                    <strong>QuickTime:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.qtl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.qtl</a><br />
                    <strong>XSPF:</a></strong> <a href="https://{$spHostnameLoadbalancer}/listen.xspf" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.xspf</a><br /><br />
                    <h6>Externe Plattformen</h6>
                    Der folgende Verweis ist für externe Plattformen wie SPRadio.eu oder Radio.de vorgesehen.<br />
                    Alternativ können Sie auch verschiedene Bandbreiten auf solchen Plattformen verteilen.<br /><br />
                    <strong>Player:</strong> <a href="https://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream</a><br /><br />
                {/if}
                {if $spAudioCCModus == "0"}
                    <h6>HLS</h6>
                    HLS (HTTP Live Streaming) ist ein Protokoll zur Übertragung von Multimedia-Inhalten, das HTTP verwendet und es ermöglicht, Inhalte in kleinen Dateisegmenten zu übertragen, um eine
                    bessere Anpassung an wechselnde Netzwerkbedingungen zu gewährleisten.<br /><br />
                    Vor dem Einsatz von HLS sollten Sie unbedingt auch die FAQs zum Thema lesen: <a href="https://www.spcast.eu/faq/allgemein/hls-http-live-streaming/" target="_blank"
                        rel="noopener">https://www.spcast.eu/faq/allgemein/hls-http-live-streaming/</a><br /><br />
                    {if $spCNAMELoadBalancer}
                        <strong>HLS (Automatische Erkennung):</strong> <a href="https://{$spCNAMELoadBalancer}/stream.hls" target="_blank"
                            rel="noopener">https://{$spCNAMELoadBalancer}/stream.hls</a><br /><br />
                    {else}
                        <strong>HLS (Automatische Erkennung):</strong> <a href="https://{$spHostnameLoadbalancer}/stream.hls" target="_blank"
                            rel="noopener">https://{$spHostnameLoadbalancer}/stream.hls</a><br /><br />
                    {/if}
                {/if}
                <h6>Sonstige Verweise</h6>
                Unter speziellen Umständen kann gelegentlich eine direkte Endung erforderlich sein.<br />
                Dies sollte jedoch wirklich die absolute Ausnahme darstellen.<br /><br />
                {if $spCNAMELoadBalancer}
                    <strong>Player:</strong> <a href="https://{$spCNAMELoadBalancer}/stream.mp3" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream.mp3</a><br />&nbsp;<br />
                {else}
                    <strong>Player:</strong> <a href="https://{$spHostnameLoadbalancer}/stream.mp3" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream.mp3</a><br />&nbsp;<br />
                {/if}
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                            data-content="Wenn Sie einen Shoutcast V1 oder V2 Endpunkt benötigen den wir nicht Integriert haben, melden Sie sich. Wir werden hier sicher helfen können.">
                        </i> Shoutcast V1 / V2 Integration
                    </h3>
                </div>
            </div>
            <div class="card-body">
            <p>Einige Shoutcast V1 & V2 Endpunkte sind direkt in SPCast integriert. Die folgenden Verweise können Ihnen helfen Ihre bestehenden Skripte problemlos einzubinden.</p>
                <h6>Shoutcast V2</h6>
                <p><strong>1</strong> <a href="https://{$spHostnameLoadbalancer}/index.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/index.html</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/played.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/played.html</a><br />
                    <strong>3:</strong> <a href="https://{$spHostnameLoadbalancer}/admin.cgi" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/admin.cgi</a><br />
                    <strong>4:</strong> <a href="https://{$spHostnameLoadbalancer}/currentsong" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/currentsong</a>
                </p>
                <h6>Shoutcast V1</h6>
                <p><strong>1:</strong> <a href="https://{$spHostnameLoadbalancer}/indexv1.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/indexv1.html</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/playedv1.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/playedv1.html</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/adminv1.cgi" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/adminv1.cgi</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                            data-content="Wenn Sie einen Icecast V2 oder KH Endpunkt benötigen den wir nicht Integriert haben, melden Sie sich. Wir werden hier sicher helfen können.">
                        </i> Icecast V2 / KH Integration
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <h6>Icecast V2 / KH</h6>
                <p>Einige Icecast V2 & KH Endpunkte sind direkt in SPCast integriert. Die folgenden Verweise können Ihnen helfen Ihre bestehenden Skripte problemlos einzubinden.</p>
                <p><strong>1:</strong> <a href="https://{$spHostnameLoadbalancer}/status.xsl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/status.xsl</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/server_version.xsl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/server_version.xsl</a><br />
                    <strong>3:</strong> <a href="https://{$spHostnameLoadbalancer}/status-json.xsl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/status-json.xsl</a>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        Problemübersicht<br />
                        <small>Bietet Ihnen in Echtzeit einen Überblick über die aktuellen Probleme in Ihrer persönlichen Umgebung. Falls keine Probleme vorhanden sind, erscheint das Fenster in
                            Weiß.</small>
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <iframe id="spExternalIframeSPCastDiskspace" frameborder="0" src="https://{$spHostname}:9010/d/M6OcNMv4k/spcast-error-overview?orgId=1&theme=light&kiosk"
                    title="Problemübersicht"></iframe>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                            data-content="Im Speicher werden sämtliche Musiktitel, Logdateien, Podcasts und Aufnahmen berücksichtigt. Aufnahmen vergrößern den Speicherplatz dauerhaft. Wenn Sie dies nicht wünschen, können Sie in Betracht ziehen, die Programmaufnahmen zu deaktivieren oder vom 24-Stunden-Aufnahmeformat auf eine der anderen Optionen umzustellen.">
                        </i>
                        Aktueller Speicherverbrauch<br />
                        <small>Der Speicher wird in Echtzeit berechnet und ist stets auf dem aktuellen Stand.</small>
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <iframe id="spExternalIframeSPCastDiskspace" frameborder="0" src="https://{$spHostname}:9010/d/_Zv8xmMVk/spcast-diskspace?orgId=1&theme=light&kiosk"
                    title="Aktueller Speicherverbrauch"></iframe>
            </div>
        </div>
    </div>
</div>