<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_settings'}<br />
                <small>{lang key='sp_spcast_settings_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <h3>{lang key='sp_spcast_settings_webradio'}</h3>
            <p>{lang key='sp_spcast_settings_webradio_desc'}</p>

            {if $spSettingsRadioName == ""}
                <div class="alert alert-danger" role="alert">
                    {lang key='sp_spcast_settings_webradio_not_functional'}
                </div>
            {/if}

            <div class="form-group">
                <label for="InputRadioName"><strong>{lang key='sp_spcast_settings_webradio_name'}</strong></label>
                <input type="text" class="form-control" id="spSettingsRadioName" aria-describedby="InputRadioName" placeholder="{lang key='sp_spcast_settings_webradio_name_placeholder'}"
                    required="required" name="spSettingsRadioName" value="{$spSettingsRadioName}" />
                <small id="InputRadioName" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_name_desc'}</small>
            </div>

            <div class="form-group">
                <label for="InputRadioDescription"><strong>{lang key='sp_spcast_settings_webradio_description'}</strong></label>
                <input type="text" class="form-control" id="spSettingsRadioDescription" aria-describedby="InputRadioDescription"
                    placeholder="{lang key='sp_spcast_settings_webradio_description_placeholder'}" required="required" name="spSettingsRadioDescription" value="{$spSettingsRadioDescription}" />
                <small id="InputRadioDescription" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_description_desc'}</small>
            </div>

            <div class="form-group">
                <label for="InputRadioGenre"><strong>{lang key='sp_spcast_settings_webradio_genre'}</strong></label>
                <input type="text" class="form-control" id="spSettingsRadioGenre" aria-describedby="InputRadioGenre" placeholder="{lang key='sp_spcast_settings_webradio_genre_placeholder'}"
                    required="required" name="spSettingsRadioGenre" value="{$spSettingsRadioGenre}" />
                <small id="InputRadioGenre" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_genre_desc'}</small>
            </div>

            <div class="form-group">
                <label for="InputRadioURL"><strong>{lang key='sp_spcast_settings_webradio_url'}</strong></label>
                <input type="url" class="form-control" id="spSettingsRadioURL" aria-describedby="InputRadioURL" placeholder="{lang key='sp_spcast_settings_webradio_url_placeholder'}"
                    required="required" name="spSettingsRadioURL" value="{$spSettingsRadioURL}" />
                <small id="InputRadioURL" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_url_desc'}: https://{$spHostname}</small>
            </div>

            {if $spAudioCCModus == "0"}
                <hr style="background-color: red;">

                <h3>HTML 5 Player</h3>

                <div class="form-group">
                    <label for="InputRadioNoCoverURL"><strong>NoCover-URL</strong></label>
                    <input type="text" class="form-control" id="spSettingsRadioNoCoverURL" aria-describedby="InputRadioNoCoverURL" placeholder="Geben Sie eine URL für ein eigenes NoCover-Bild an."
                        required="required" name="spSettingsRadioNoCoverURL" value="{$spSettingsRadioNoCoverURL}" />
                    <small id="InputRadioNoCoverURL" class="form-text text-muted">Im Standard wird in allen Bereichen das NoCover-Bild angezeigt, wenn wir kein Cover für den jeweiligen Song finden
                        konnten. Sie können hier eine eigene URL für ein eigenes NoCover-Bild angeben.</small>
                </div>

                <div class="form-group">
                    <label for="InputRadioLogoURL"><strong>Logo-URL</strong></label>
                    <input type="text" class="form-control" id="spSettingsRadioLogoURL" aria-describedby="InputRadioLogoURL" placeholder="Geben Sie eine URL für ein eigenes NoCover-Bild an."
                        required="required" name="spSettingsRadioLogoURL" value="{$spSettingsRadioLogoURL}" />
                    <small id="InputRadioLogoURL" class="form-text text-muted">Im Standard wird das STREAMPANEL-Logo angezeigt. Sie können hier eine eigene URL für Ihr eigenes Logo angeben.</small>
                </div>

                <div class="form-group">
                    <label for="InputRadioBackgroundURL"><strong>Background-URL</strong></label>
                    <input type="text" class="form-control" id="spSettingsRadioBackgroundURL" aria-describedby="InputRadioBackgroundURL" placeholder="Geben Sie eine URL für ein eigenes NoCover-Bild an."
                        required="required" name="spSettingsRadioBackgroundURL" value="{$spSettingsRadioBackgroundURL}" />
                    <small id="InputRadioBackgroundURL" class="form-text text-muted">Im Standard geben wir in allen Bereichen einen eigenen Hintergrund aus. Sie können hier eine eigene URL für ein eigenen
                        Hintergrund angeben.<br />
                        <strong>Achtung:</strong> Das Standard-Hintergrundbild ist urheberrechtlich geschützt. Sie dürfen es unter keinen Umständen außerhalb des HTML5-Players der SPCast-Umgebung
                        nutzen.</small>
                </div>

                <div class="form-group">
                    <label for="InputRadioFaviconURL"><strong>Favicon-URL</strong></label>
                    <input type="text" class="form-control" id="spSettingsRadioFaviconURL" aria-describedby="InputRadioFaviconURL" placeholder="Geben Sie eine URL für ein eigenes Favicon-Bild an."
                        name="spSettingsRadioFaviconURL" value="{$spSettingsRadioFaviconURL}" />
                    <small id="InputRadioFaviconURL" class="form-text text-muted">Optinales Feld. Im Standard wird das STREAMPANEL-Favicon angezeigt. Sie können hier eine eigene URL für Ihr eigenes
                        Favicon im PNG-Format
                        angeben.</small>
                </div>

                <hr style="background-color: red;">

                <h3>Rechtliche Gegebenheiten</h3>

                <div class="form-group">
                    <label for="InputSettingsPrivacy"><strong>Datenschutz</strong></label>
                    <small id="InputSettingsPrivacy" class="form-text text-muted">Auch ein Webradio ist nicht von der Verpflichtung einer Datenschutzerklärung ausgenommen.<br />
                        <strong>Tipp:</strong> Die folgende Textarea unterstützt auch HTML-Tags. Sie können Ihre Datenschutzerklärung also in einen Editor Ihrer Wahl formatieren und hier
                        hineinkopieren.<br />
                        <strong>Hinweis:</strong> Der Datenschutzverweis wird mit dem von uns gehosteten <a href='https://{$spHostname}/' target='_blank' rel='noopener'>HTML5-Player</a>
                        verlinkt.</small><br />
                    <textarea class="form-control" name="spSettingsPrivacy" id="spSettingsPrivacy" value="{$spSettingsPrivacy}" placeholder="Datenschutzerklärung"
                        style="height: 250px">{$spSettingsPrivacy}</textarea>
                </div>

                <div class="form-group">
                    <label for="InputSettingsImprint"><strong>Impressum</strong></label>
                    <small id="InputSettingsImprint" class="form-text text-muted">Auch ein Webradio ist nicht von der Verpflichtung eines Impressums ausgenommen.<br />
                        <strong>Tipp:</strong> Die folgende Textarea unterstützt auch HTML-Tags. Sie können Ihr Impressum also in einen Editor Ihrer Wahl formatieren und hier hineinkopieren.<br />
                        <strong>Hinweis:</strong> Das Impressum wird mit dem von uns gehosteten <a href='https://{$spHostname}/' target='_blank' rel='noopener'>HTML5-Player</a>
                        verlinkt.</small><br />
                    <textarea class="form-control" name="spSettingsImprint" id="spSettingsImprint" value="{$spSettingsImprint}" placeholder="Impressum"
                        style="height: 250px">{$spSettingsImprint}</textarea>
                </div>
            {/if}

            <hr style="background-color: red;">

            <h3>AutoDJ (Intern)</h3>

            <h4>Modus der Ausspielungen</h4>

            <p>- Im Standard werden die Inhalte zum festgelegten Zeitpunkt eingespielt. Beim Nutzer wird also der aktuell laufende Song unterbrochen und die Inhalte werden eingespielt. Derweil
                läuft der AutoDJ im Hintergrund weiter. Am Ende der Inhalte wird der AutoDJ im aktuellen Stand fortgesetzt. (Ohne FADE-Funktion)<br />
                - Wenn Sie den Alternativen Modus aktivieren, werden Ihre Inhalte zum festgelegten Zeitpunkt eingespielt. Beim Nutzer wird also erneut der laufende Song unterbrochen und die
                Inhalte werden eingespielt. Am Ende der Inhalte beginnt der AutoDJ mit einem neuen Song, basierend auf Ihrer Planung im AutoDJ. (Mit FADE-Funktion)</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spNewsModus" value="1" {if $spNewsModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='sp_yes'}"
                        data-off-text="{lang key='sp_no'}" />
                    Alternativen Modus für "Nachrichten" aktivieren?
                </label>
            </div>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spJinglesModus" value="1" {if $spJinglesModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Alternativen Modus für "Jingles" aktivieren?
                </label>
            </div>

            <!--<div class="form-group">
                <label for="InputGoogleAnalytics"><strong>Google Analytics</strong></label>
                <input type="text" class="form-control" id="spSettingsInputGoogleAnalytics" aria-describedby="InputGoogleAnalytics" placeholder="Kopieren Sie hier ihre Google Analytics ID hinein."
                    required="required" name="spSettingsInputGoogleAnalytics" value="{$spSettingsInputGoogleAnalytics}" />
                <small id="InputGoogleAnalytics" class="form-text text-muted">Nach Eintragung ihrer Google Analytics ID müssen Sie über das Dashboard den SPCast Server einmal neu starten.</small>
            </div>-->

            {if $spAudioCCModus == "0"}
                <hr style="background-color: red;">

                <h3>Schnittstelle (API)</h3>

                <h4>DJ / Moderatoren</h4>

                <p>Wenn Sie hier einen Sicherheitstoken angeben, können Sie Ihren Moderatoren ermöglichen, Zuhörer über eine öffentliche URL zu verschieben, ohne Ihr Administratorpasswort an
                    irgendjemanden weiterzugeben. Wir empfehlen einen Token von mindestens 16 und maximal 32 Zeichen, der eine Kombination aus Zahlen und Buchstaben enthält!</p>

                <div class="form-group">
                    <label for="InputListenersToken"><strong>Zuhörer Verschieben: Sicherheitstoken</strong></label>
                    <input type="text" class="form-control" id="spDJMoveListenersToken" aria-describedby="InputListenersToken" placeholder="Geben Sie einen Sicherheitstoken ein." required="required"
                        name="spDJMoveListenersToken" value="{$spDJMoveListenersToken}" />
                </div>
            {/if}

            <hr style="background-color: red;">

            <h3>CNAME</h3>

            <p>CNAME-Einstellungen hier ändern nur die Anzeige im Interface. Es erleichtert Ihnen die Arbeit, indem alle relevanten Verweise direkt angepasst werden. Wenn Sie einen CNAME-Eintrag
                angelegt haben, eröffnen Sie bitte ein Support-Ticket, damit wir davon Kenntnis haben. Derzeit gibt es keine Automation in diese Richtung, und wir müssen Ihre Domain einmalig
                einpflegen.</p>

            <h4>LoadBalancer</h4>

            <p>Wenn Sie über eine eigene Domain verfügen und Zugriff auf die DNS-Einstellungen haben, können Sie die URLs des LoadBalancers für Ihr Branding ändern. Erstellen Sie dafür einen
                CNAME-Eintrag mit dem Ziel "loadbalancer.sp.radio.fm".<br /> <strong>FAQ aufrufen:</strong> <a
                    href="https://www.spcast.eu/faq/allgemein/einrichtung-eines-cname-fuer-die-anpassung-der-loadbalancer-url/" target="_blank"
                    rel="noopener">https://www.spcast.eu/faq/allgemein/einrichtung-eines-cname-fuer-die-anpassung-der-loadbalancer-url/</a></p>

            <div class="form-group">
                <label for="InputCNAMELoadBalancer"><strong>CNAME: Loadbalancer</strong></label>
                <input type="text" class="form-control" id="spCNAMELoadBalancer" aria-describedby="InputCNAMELoadBalancer"
                    placeholder="Tragen Sie die Domain ein, die Sie für den LoadBalancer nutzen möchten." name="spCNAMELoadBalancer" value="{$spCNAMELoadBalancer}" />
            </div>

            <h4>System <i>(Noch nicht unterstützt!)</i></h4>

            <p>Wenn Sie über eine eigene Domain verfügen und Zugriff auf die DNS-Einstellungen haben, können Sie die URLs des eigentlichen Systems für Ihr Branding ändern. Erstellen Sie dafür einen
                CNAME-Eintrag mit dem Ziel "{$spHostnameLoadbalancer}".</p>

            <div class="form-group">
                <label for="InputCNAMESystem"><strong>CNAME: System</strong></label>
                <input type="text" class="form-control" id="spCNAMESystem" aria-describedby="InputCNAMESystem"
                    placeholder="Tragen Sie die Domain ein, die Sie für das eigentliche System nutzen möchten." name="spCNAMESystem" value="{$spCNAMESystem}" />
            </div>

            <hr style="background-color: red;">

            <h3>SPCast Umgebung</h3>

            <h4>Format <i>(Noch nicht unterstützt!)</i></h4>

            <p>Natürlich kann die SPCast-Umgebung nicht nur MP3 verarbeiten. Hierfür sind jedoch einige Anpassungen unsererseits nötig. Daher kann dies derzeit nicht geändert werden.</p>

            <div class="form-group">
                <label for="InputMusicFormat"><strong>Format</strong></label>
                <input type="text" class="form-control" id="spSettingsMusicFormat" aria-describedby="InputMusicFormat"
                    placeholder="Wählen Sie ein das Format aus der Auswahlliste aus unter welchen Sie die Umgebung betreiben möchten." name="spSettingsMusicFormat" value="{$spSettingsMusicFormat}"
                    readonly />
            </div>

            <h4>SampleRate</h4>

            <p>Die SampleRate (auf Deutsch "Abtastrate") einer Musikdatei gibt an, wie oft pro Sekunde der Ton einer Audioaufnahme gemessen (oder "abgetastet") wurde, als sie
                digitalisiert wurde. Man kann es sich wie die "Auflösung" des Tons vorstellen. Eine höhere Sample-Rate kann mehr Details des Tons erfassen, aber die Dateigröße wird ebenfalls größer.
            </p>

            <p>Der Standardwert von 44.100 bedeutet, dass der Ton 44.100 Mal pro Sekunde gemessen wurde. Dieser Wert ist für die meisten Anwendungen, einschließlich CDs, optimal.</p>

            <p>Wenn Sie die Sample-Rate anpassen, sollten Sie bedenken:</p>
            <ul>
                <li>Eine höhere Rate kann mehr Klangdetails bieten, benötigt aber mehr Speicherplatz.</li>
                <li>Eine niedrigere Rate spart Speicherplatz, kann aber zu einer minderwertigen Klangqualität führen.</li>
            </ul>
            <p>Wenn Sie nicht wissen, was Sie tun, belassen Sie diese Einstellung auf dem Standardwert: 44100</p>

            <div class="form-group">
                <label for="InputMusicSampleRate"><strong>SampleRate</strong></label>
                <input type="text" class="form-control" id="spSettingsMusicSampleRate" aria-describedby="InputMusicSampleRate" placeholder="Geben Sie eine gültige SampleRate ein."
                    name="spSettingsMusicSampleRate" value="{$spSettingsMusicSampleRate}" required="required" />
            </div>

            <hr style="background-color: red;">

            {if $spAudioCCModus == "0"}
                <h3>Relay Modus</h3>

                <h4>Relay Modus aktivieren</h4>

                <p>Auf Wunsch können Sie Ihre Umgebung im Relay-Modus betreiben. Das heißt einfach gesagt, dass Ihr Programm von einer externen Stelle empfangen wird. Dies kann nützlich sein, wenn ein
                    Wechsel auf der SPCast-Plattform derzeit keine Option ist. Durch den Relay-Modus profitieren Sie dennoch von allen Funktionen innerhalb der Umgebung.</p>

                <div class="controls checkbox">
                    <label>
                        <input type="checkbox" name="spRelayModus" value="1" {if $spRelayModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='sp_yes'}"
                            data-off-text="{lang key='sp_no'}" />
                        Umgebung im Relay Modus betreiben?
                    </label>
                </div>

                <h4>Relay-URL</h4>

                <p>Geben Sie hier die externe URL an, von der das Programm in Ihren Streamserver eingespielt werden soll.</p>

                <div class="form-group">
                    <label for="InputRelayURL"><strong>Relay-URL</strong></label>
                    <input type="url" class="form-control" id="spSettingsRelayURL" aria-describedby="InputRelayURL" placeholder="Beispiel: https://example.com/stream" name="spSettingsRelayURL"
                        value="{$spSettingsRelayURL}" />
                </div>
            {/if}

            <hr style="background-color: red;">

            <h3>Sonstige Optionen</h3>

            <h4>AudioCC Modus</h4>

            <p>Wenn Sie sich bei uns als AudioCC-Kunde registriert haben, müssen Sie spezielle Versionen von Icecast V2 oder Icecast KH Server des Anbieters einsetzen. Wir setzen hierbei auf die
                Icecast KH Version. SPCast-Streamserver sind jedoch weitaus moderner, latenzfrei und geben uns mehr Spielraum bei der Bereitstellung von Funktionen. Wenn Sie möchten, haben Sie hier
                die Möglichkeit, das Interface für einen SPCast-Streamserver zu simulieren. Als AudioCC Nutzer sollte diese Funktion natürlich dauerhaft aktiviert bleiben! Wenn Sie als AudioCC-Kunde
                Funktionen vermissen, zögern Sie nicht, uns zu schreiben.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spAudioCCModus" value="1" {if $spAudioCCModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Interface für AudioCC anpassen?
                </label>
            </div>

            <h4>Cashbox</h4>

            <p>Die Cashbox ist eine Integration, die es Ihren Besuchern/Nutzern ermöglicht, Einzahlungen anonym oder unter ihrem eigenen Namen auf ihren Kundenaccount vorzunehmen. Die Einsatzszenarien
                bleiben Ihnen überlassen, egal ob Sie Spenden sammeln, um den Betrieb der Station zu unterstützen, oder Ihr Team sich an den Kosten beteiligen lässt. Bitte beachten Sie, dass es
                aufgrund gesetzlicher Bestimmungen keine Auszahlungen für diese Einzahlungen gibt. Sie können Einzahlungen über die Cashbox ausschließlich für Produkte innerhalb Ihres Accounts
                verwenden. Eine aktivierte Cashbox wird automatisch im Standard HTML5-Player verlinkt.</p>

            <p><a href="https://login.streampanel.net/index.php?m=cashbox" target="_blank" rel="noopener">Cashbox-Einstellungen aufrufen</a></p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spUseCashbox" value="1" {if $spUseCashbox} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='sp_yes'}"
                        data-off-text="{lang key='sp_no'}" />
                    Cashbox aktivieren?
                </label>
            </div>

            <h4>Zugriffsverwaltung</h4>

            <p>Bei mehreren Produkten unter SPCast wird ein Account pro Produkt empfohlen. Ist dies der Fall, kann die eingebaute Benutzerverwaltung im Kundencenter genutzt werden. Wenn dies keine
                Option ist, geben Sie hier die Kundennummer eines anderen Kunden an. Die hier angegebene Kundennummer hat vollen Zugriff auf die SPCast Verwaltung. Sie müssen in diesem Fall dem
                anderen Nutzer selbstständig den Link zur Produktverwaltung zukommen lassen.</p>

            <div class="form-group">
                <label for="InputAccessID"><strong>Kundennummer</strong></label>
                <input type="text" class="form-control" id="spSettingsAdditionalAccessID" aria-describedby="InputAccessID"
                    placeholder="Geben Sie eine Kundennummer ein die vollen Zugriff auf die SPCast-Verwaltung erhalten soll." name="spSettingsAdditionalAccessID"
                    value="{if $spSettingsAdditionalAccessID neq 0}{$spSettingsAdditionalAccessID}{/if}" />
            </div>

        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
            </div>
        </div>
    </form>

</div>