<!-- Modal: SPCast (Testserver) / Information -->
<div class="modal fade" id="spcast2information" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel">SPCast (Testserver)</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i aria-hidden="true" class="ki ki-close"></i>
                </button>
            </div>
            <div class="modal-body">
                <h5>Nutzung</h5>
                <ul>
                    <li>Dies ist Ihr Testserver.</li>
                    <li>Dieser Server empfängt und sendet Ihr Programm automatisch vom Hauptserver.</li>
                    <li>Sie können diesen Server nutzen, um Ihr Setup zu testen.</li>
                    <li>Verteilen Sie diese Sendeadressen niemals öffentlich!</li>
                </ul>
                <hr />
                <h5>{lang key='sp_spcast_other_links'}</h5>
                Die folgenden Verweise dienen nur der Information zum Testserver.<br /><br />
                <strong>{lang key='sp_spcast_html5_player'}:</strong> <a href="https://{$spHostname}:8100/" target="_blank" rel="noopener">https://{$spHostname}:8100/</a><br />
                <strong>{lang key='sp_spcast_browser'}:</strong> <a href="https://{$spHostname}:8100/stream" target="_blank" rel="noopener">https://{$spHostname}:8100/stream</a><br /><br />
                <strong>Winamp / iTunes:</strong> <a href="https://{$spHostname}:8100/listen_test.pls" target="_blank" rel="noopener">https://{$spHostname}:8100/listen_test.pls</a><br />
                <strong>Windows Media {lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostname}:8100/listen_test.asx" target="_blank" rel="noopener">https://{$spHostname}:8100/listen_test.asx</a><br />
                <strong>Real {lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostname}:8100/listen_test.ram" target="_blank" rel="noopener">https://{$spHostname}:8100/listen_test.ram</a><br />
                <strong>QuickTime:</strong> <a href="https://{$spHostname}:8100/listen_test.qtl" target="_blank" rel="noopener">https://{$spHostname}:8100/listen_test.qtl</a><br /><br />
                <strong>JSON:</strong> <a href="https://{$spHostname}:8100/status-json.xsl" target="_blank" rel="noopener">https://{$spHostname}:8100/status-json.xsl</a><br />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal: SPCast (Testserver) / Change Data -->
<div class="modal fade" id="spcast2changedata" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">SPCast (Testserver)</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i aria-hidden="true" class="ki ki-close"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="InputUsername2"><strong>Username</strong></label>
                        <input type="text" class="form-control" id="InputUsername2" aria-describedby="username2Help"
                            placeholder="Geben Sie einen Usernamen ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID2Username" value="{$spServerID2Username}" />
                        <small id="username2Help" class="form-text text-muted">Geben Sie einen Usernamen ein.</small>
                    </div>

                    <div class="form-group">
                        <label for="InputPasswort2"><strong>Passwort</strong></label>
                        <input type="password" autocomplete="off" class="form-control" id="InputPasswort2" aria-describedby="passwort2Help"
                            placeholder="Geben Sie ein Passwort ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID2Password" value="{$spServerID2Password}" />
                        <small id="passwort2Help" class="form-text text-muted">Geben Sie ein Passwort ein. Achten Sie unbedingt darauf, ein sicheres Passwort zu verwenden.</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row col-xl-12">
                        <div class="col-xl-6">
                            <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
                        </div>
                        <div class="col-xl-6">
                            <input type="submit" class="btn btn-success btn-block" name="submit_credentials_id2" value="Einstellungen speichern" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>