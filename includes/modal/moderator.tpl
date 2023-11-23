<!-- Modal: Moderator -->
{foreach from=range(1, 50) item=spTemplateModID}
    <div class="modal fade" id="spcastmodid{$spTemplateModID}" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
        <form id="SPCastModeratorEdit" method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalLabel">SPCast / Moderator {$spTemplateModID}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i aria-hidden="true" class="ki ki-close"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name"><strong>Moderator: Name</strong></label>
                            <input type="text" class="form-control" id="name" aria-describedby="nameHelp" placeholder="Geben Sie einen Namen ein." name="spModName{$spTemplateModID}"
                                value="{$spModName{$spTemplateModID}}" autocomplete="off" required="required" data-fv-not-empty="true" data-fv-not-empty___message="Dieses Feld darf nicht leer sein."
                                data-fv-not-empty___trim="true" minlength="2" maxlength="32" data-fv-string-length="true" data-fv-string-length___message="{lang key="sp_input_lenght"} (4-16)"
                                pattern="[a-zA-Z0-9äöüßÄÖÜ\s]+" data-fv-regexp="true" data-fv-regexp___message="{lang key="sp_input_regexp_failed"}" />
                            <small id="nameHelp" class="form-text text-muted">
                                Der Name des Moderators dient Ihrer Identifikation sowie der Darstellung auf Ihrer Webseite.<br /><br />
                                Der Name unterliegt den folgenden Voraussetzungen.
                                <ul>
                                    <li>Maximal 32 Zeichen</li>
                                </ul>
                            </small>
                        </div>

                        <div class="form-group">
                            <label for="image"><strong>Moderator: Bild</strong></label>
                            <input type="url" class="form-control" id="image" name="spModImage{$spTemplateModID}" autocomplete="off" />
                            <small id="nameHelp" class="form-text text-muted">
                                Das Bild des Moderators dient Ihrer Identifikation sowie der Darstellung auf Ihrer Webseite.<br /><br />
                                Es muss sich um eine URL zu einen Bild des Moderators handel.<br />
                                Beispiel: <a href="https://sp.radio.fm/images/example_moderator.png" target="_blank" rel="noopener">https://sp.radio.fm/images/example_moderator.png</a><br /><br />
                                Dieses Feld ist völlig Optional und kann freigelassen werden.
                            </small>
                        </div>

                        <div class="form-group">
                            <label for="username"><strong>Moderator: Username</strong></label>
                            <input type="text" class="form-control" id="username" aria-describedby="usernameHelp" placeholder="Geben Sie einen Usernamen ein." name="spModUsername{$spTemplateModID}"
                                value="{$spModUsername{$spTemplateModID}}" autocomplete="off" required="required" data-fv-not-empty="true" data-fv-not-empty___message="Dieses Feld darf nicht leer sein."
                                data-fv-not-empty___trim="true" minlength="4" maxlength="16" data-fv-string-length="true" data-fv-string-length___message="{lang key="sp_input_lenght"} (4-16)"
                                pattern="[a-zA-Z0-9]+" data-fv-regexp="true" data-fv-regexp___message="{lang key="sp_input_regexp_failed"}" />
                            <small id="usernameHelp" class="form-text text-muted">
                                Der Username ist der Loginname für den Broadcaster des Moderators.<br /><br />
                                Der Username unterliegt den folgenden Voraussetzungen.
                                <ul>
                                    <li>Keine Sonderzeichen</li>
                                    <li>Maximal 16 Zeichen</li>
                                </ul>
                            </small>
                        </div>

                        <div class="form-group">
                            <label for="password"><strong>Moderator: Passwort</strong></label>
                            <input type="text" class="form-control" id="password" aria-describedby="passwordHelp" placeholder="Geben Sie ein Passwort ein." name="spModPassword{$spTemplateModID}"
                                value="{$spModPassword{$spTemplateModID}}" autocomplete="off" required="required" data-fv-not-empty="true" data-fv-not-empty___message="Dieses Feld darf nicht leer sein."
                                data-fv-not-empty___trim="true" minlength="4" maxlength="32" data-fv-string-length="true" data-fv-string-length___message="{lang key="sp_input_lenght"} (4-32)"
                                pattern="[a-zA-Z0-9]+" data-fv-regexp="true" data-fv-regexp___message="{lang key="sp_input_regexp_failed"}" />
                            <small id="passwordHelp" class="form-text text-muted">
                                Das Passwort ist das Loginpasswort für den Broadcaster des Moderators.<br /><br />
                                Das Passwort unterliegt den folgenden Voraussetzungen.
                                <ul>
                                    <li>Keine Sonderzeichen</li>
                                    <li>Maximal 32 Zeichen</li>
                                </ul>
                            </small>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="row col-xl-12">
                            <div class="col-xl-6">
                                <button type="button" class="btn btn-light-primary btn-block" data-dismiss="modal">Schließen</button>
                            </div>
                            <div class="col-xl-6">
                                <input type="submit" class="btn btn-success btn-block" name="submit_moderator_credentials{$spTemplateModID}" value="Moderator speichern" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
{/foreach}