<!-- Modal: SPCast (Icecast V2) / Information -->
<div class="modal fade" id="spcast4information" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel">SPCast (Icecast V2)</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i aria-hidden="true" class="ki ki-close"></i>
                </button>
            </div>
            <div class="modal-body">
                <h5>Nutzung</h5>
                <ul>
                    <li>Dieser Server empfängt und sendet Ihr Programm automatisch vom Hauptserver.</li>
                    <li>Sie können diesen Server für etwaige Skripte nutzen.</li>
                    <li>Dieser Server verteilt Ihr Programm, wenn es im Icecast-Verzeichnis registriert ist.</li>
                    <li>Sie sollten die Sendeadressen nur dann verteilen, wenn es unbedingt notwendig ist.</li>
                </ul>
                <hr />
                <h5>Daten für Ihre Webseite & externe Plattformen</h5>
                Folgender Verweis ist für die Player Ihrer Webseite und sämtliche externen Plattformen gültig.<br /><br />
                <strong>HTTP:</strong> <a href="http://{$spHostname}:8122/stream" target="_blank" rel="noopener">http://{$spHostname}:8122/stream</a><br />
                <strong>HTTPs:</strong> <a href="https://{$spHostname}:8120/stream" target="_blank" rel="noopener">https://{$spHostname}:8120/stream</a><br />
                <hr />
                <h5>Sonstige Verweise</h5>
                Je nach Einsatzgebiet können die folgenden Verweise unter umständen nützlich sein.<br /><br />
                <strong>HTML 5 Player:</strong> <a href="https://{$spHostname}:8120/" target="_blank" rel="noopener">https://{$spHostname}:8120/</a><br /><br />
                <strong>Winamp / iTunes:</strong> <a href="https://{$spHostname}:8120/listen.pls" target="_blank" rel="noopener">https://{$spHostname}:8120/listen.pls</a><br />
                <strong>Windows Media Player:</strong> <a href="https://{$spHostname}:8120/listen.asx" target="_blank" rel="noopener">https://{$spHostname}:8120/listen.asx</a><br />
                <strong>Real Player:</strong> <a href="https://{$spHostname}:8120/listen.ram" target="_blank" rel="noopener">https://{$spHostname}:8120/listen.ram</a><br />
                <strong>QuickTime:</strong> <a href="https://{$spHostname}:8120/listen.qtl" target="_blank" rel="noopener">https://{$spHostname}:8120/listen.qtl</a><br /><br />
                <strong>JSON:</strong> <a href="https://{$spHostname}:8120/status-json.xsl" target="_blank" rel="noopener">https://{$spHostname}:8120/status-json.xsl</a><br />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal: SPCast (Icecast V2) / Change Data -->
<div class="modal fade" id="spcast4changedata" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">SPCast (Icecast V2)</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i aria-hidden="true" class="ki ki-close"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="InputUsername4"><strong>Username</strong></label>
                        <input type="text" class="form-control" id="InputUsername4" aria-describedby="username4Help"
                            placeholder="Geben Sie einen Usernamen ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID4Username" value="{$spServerID4Username}" />
                        <small id="username4Help" class="form-text text-muted">Geben Sie einen Usernamen ein.</small>
                    </div>

                    <div class="form-group">
                        <label for="InputPasswort4"><strong>Passwort</strong></label>
                        <input type="password" autocomplete="off" class="form-control" id="InputPasswort4" aria-describedby="passwort4Help"
                            placeholder="Geben Sie ein Passwort ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID4Password" value="{$spServerID4Password}" />
                        <small id="passwort4Help" class="form-text text-muted">Geben Sie ein Passwort ein. Achten Sie unbedingt darauf, ein sicheres Passwort zu verwenden.</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row col-xl-12">
                        <div class="col-xl-6">
                            <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
                        </div>
                        <div class="col-xl-6">
                            <input type="submit" class="btn btn-success btn-block" name="submit_credentials_id4" value="Einstellungen speichern" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>