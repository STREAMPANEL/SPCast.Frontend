<!-- Modal: SPCast (Icecast KH) / Information -->
<div class="modal fade" id="spcast3information" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="ModalLabel">SPCast (Icecast KH)</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <i aria-hidden="true" class="ki ki-close"></i>
                </button>
            </div>
            <div class="modal-body">
                <h5>Nutzung</h5>
                <ul>
                    <li>Dieser Server empfängt und sendet Ihr Programm automatisch vom Hauptserver.</li>
                    <li>Sie können diesen Server für etwaige Skripte nutzen.</li>
                    <li>Sie sollten die Sendeadressen nur dann verteilen, wenn es unbedingt notwendig ist.</li>
                </ul>
                <hr />
                <h5>{lang key='sp_spcast_external_links'}</h5>
                Folgender Verweis ist für die Player Ihrer Webseite und sämtliche externen Plattformen gültig.<br /><br />
                <strong>HTTP:</strong> <a href="http://{$spHostname}:8110/stream" target="_blank" rel="noopener">http://{$spHostname}:8110/stream</a><br />
                <strong>HTTPs:</strong> <a href="https://{$spHostname}:8110/stream" target="_blank" rel="noopener">https://{$spHostname}:8110/stream</a><br />
                <hr />
                <h5>{lang key='sp_spcast_other_links'}</h5>
                Je nach Einsatzgebiet können die folgenden Verweise unter Umständen nützlich sein.<br /><br />
                <strong>{lang key='sp_spcast_html5_player'}:</strong> <a href="https://{$spHostname}:8110/" target="_blank" rel="noopener">https://{$spHostname}:8110/</a><br /><br />
                <strong>Winamp / iTunes:</strong> <a href="https://{$spHostname}:8110/listen.pls" target="_blank" rel="noopener">https://{$spHostname}:8110/listen.pls</a><br />
                <strong>Windows Media {lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostname}:8110/listen.asx" target="_blank" rel="noopener">https://{$spHostname}:8110/listen.asx</a><br />
                <strong>Real {lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostname}:8110/listen.ram" target="_blank" rel="noopener">https://{$spHostname}:8110/listen.ram</a><br />
                <strong>QuickTime:</strong> <a href="https://{$spHostname}:8110/listen.qtl" target="_blank" rel="noopener">https://{$spHostname}:8110/listen.qtl</a><br /><br />
                <strong>JSON:</strong> <a href="https://{$spHostname}:8110/status-json.xsl" target="_blank" rel="noopener">https://{$spHostname}:8110/status-json.xsl</a><br />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal: SPCast (Icecast KH) / Change Data -->
<div class="modal fade" id="spcast3changedata" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">SPCast (Icecast KH)</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i aria-hidden="true" class="ki ki-close"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="InputUsername3"><strong>Username</strong></label>
                        <input type="text" class="form-control" id="InputUsername3" aria-describedby="username3Help"
                            placeholder="Geben Sie einen Usernamen ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID3Username" value="{$spServerID3Username}" />
                        <small id="username3Help" class="form-text text-muted">Geben Sie einen Usernamen ein.</small>
                    </div>

                    <div class="form-group">
                        <label for="InputPasswort3"><strong>Passwort</strong></label>
                        <input type="password" autocomplete="off" class="form-control" id="InputPasswort3" aria-describedby="passwort3Help"
                            placeholder="Geben Sie ein Passwort ein. (Sie können dieses Feld nicht leer lassen.)" required="required" name="spServerID3Password" value="{$spServerID3Password}" />
                        <small id="passwort3Help" class="form-text text-muted">Geben Sie ein Passwort ein. Achten Sie unbedingt darauf, ein sicheres Passwort zu verwenden.</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row col-xl-12">
                        <div class="col-xl-6">
                            <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
                        </div>
                        <div class="col-xl-6">
                            <input type="submit" class="btn btn-success btn-block" name="submit_credentials_id3" value="Einstellungen speichern" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>