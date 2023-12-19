<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="alert alert-danger" role="alert">
    Wir empfehlen dringend, nur dann Änderungen vorzunehmen, wenn Sie genau wissen, was Sie tun. Externe Verzeichnisse und andere Dienste können in Ländern lokalisiert sein, die Sie möglicherweise
    nicht beachten. Wenn Sie den Zugriff auf bestimmte Länder einschränken möchten, aber dennoch den Zugriff auf externe Dienste zulassen möchten, müssen Sie die IP-Adressen dieser Dienste ermitteln
    und explizit erlauben. Bitte seien Sie sich bewusst, dass dies eine genaue Konfiguration erfordert und Fehler zu unerwartetem Verhalten führen kann. Im Zweifel beschränken Sie sich auf das Sperren/Erlauben von IP-Adressen.
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Länder Zulassen / Verbieten<br />
                <small>Sie können hier steuern, aus welchen Ländern Ihre Zuhörer kommen dürfen.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <ul class="nav nav-bold nav-pills">
                <li class="nav-item"><a class="nav-link active show" href="#countryA" aria-controls="countryA" role="tab" data-toggle="tab">A</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryB" aria-controls="countryB" role="tab" data-toggle="tab">B</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryC" aria-controls="countryC" role="tab" data-toggle="tab">C</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryD" aria-controls="countryD" role="tab" data-toggle="tab">D</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryE" aria-controls="countryE" role="tab" data-toggle="tab">E</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryF" aria-controls="countryF" role="tab" data-toggle="tab">F</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryG" aria-controls="countryG" role="tab" data-toggle="tab">G</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryH" aria-controls="countryH" role="tab" data-toggle="tab">H</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryI" aria-controls="countryI" role="tab" data-toggle="tab">I</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryJ" aria-controls="countryJ" role="tab" data-toggle="tab">J</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryK" aria-controls="countryK" role="tab" data-toggle="tab">K</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryL" aria-controls="countryL" role="tab" data-toggle="tab">L</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryM" aria-controls="countryM" role="tab" data-toggle="tab">M</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryN" aria-controls="countryN" role="tab" data-toggle="tab">N</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryO" aria-controls="countryO" role="tab" data-toggle="tab">O</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryP" aria-controls="countryP" role="tab" data-toggle="tab">P</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryQ" aria-controls="countryQ" role="tab" data-toggle="tab">Q</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryR" aria-controls="countryR" role="tab" data-toggle="tab">R</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryS" aria-controls="countryS" role="tab" data-toggle="tab">S</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryT" aria-controls="countryT" role="tab" data-toggle="tab">T</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryU" aria-controls="countryU" role="tab" data-toggle="tab">U</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryV" aria-controls="countryV" role="tab" data-toggle="tab">V</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryW" aria-controls="countryW" role="tab" data-toggle="tab">W</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryY" aria-controls="countryY" role="tab" data-toggle="tab">Y</a></li>
                <li class="nav-item"><a class="nav-link" href="#countryZ" aria-controls="countryZ" role="tab" data-toggle="tab">Z</a></li>
            </ul>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">

        <div class="card-body">
            <div class="tab-content">
                <div class="row">
                    <div class="col-12">
                        <button id="toggleAllFieldsBtn" class="btn btn-light-primary sp-right">Alle Länder umschalten</button>
                    </div>
                </div>
                <br /><br />
                <div role="tabpanel" class="tab-pane active show" id="countryA">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_af'}</strong></label>
                                <select name="spSafeguardCountryAF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ax'}</strong></label>
                                <select name="spSafeguardCountryAX" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAX eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAX eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_al'}</strong></label>
                                <select name="spSafeguardCountryAL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_dz'}</strong></label>
                                <select name="spSafeguardCountryDZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryDZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryDZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_as'}</strong></label>
                                <select name="spSafeguardCountryAS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ad'}</strong></label>
                                <select name="spSafeguardCountryAD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ao'}</strong></label>
                                <select name="spSafeguardCountryAO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ai'}</strong></label>
                                <select name="spSafeguardCountryAI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_aq'}</strong></label>

                                <select name="spSafeguardCountryAQ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAQ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAQ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ag'}</strong></label>

                                <select name="spSafeguardCountryAG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ar'}</strong></label>

                                <select name="spSafeguardCountryAR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_am'}</strong></label>

                                <select name="spSafeguardCountryAM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_aw'}</strong></label>

                                <select name="spSafeguardCountryAW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_au'}</strong></label>

                                <select name="spSafeguardCountryAU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_at'}</strong></label>

                                <select name="spSafeguardCountryAT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_az'}</strong></label>

                                <select name="spSafeguardCountryAZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryB">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bs'}</strong></label>
                                <select name="spSafeguardCountryBS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bh'}</strong></label>
                                <select name="spSafeguardCountryBH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bd'}</strong></label>
                                <select name="spSafeguardCountryBD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bb'}</strong></label>
                                <select name="spSafeguardCountryBB" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBB eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBB eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_by'}</strong></label>
                                <select name="spSafeguardCountryBY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_be'}</strong></label>
                                <select name="spSafeguardCountryBE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bz'}</strong></label>
                                <select name="spSafeguardCountryBZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bj'}</strong></label>
                                <select name="spSafeguardCountryBJ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBJ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBJ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bm'}</strong></label>
                                <select name="spSafeguardCountryBM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bt'}</strong></label>
                                <select name="spSafeguardCountryBT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bo'}</strong></label>
                                <select name="spSafeguardCountryBO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bq'}</strong></label>
                                <select name="spSafeguardCountryBQ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBQ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBQ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ba'}</strong></label>
                                <select name="spSafeguardCountryBA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bw'}</strong></label>
                                <select name="spSafeguardCountryBW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bv'}</strong></label>
                                <select name="spSafeguardCountryBV" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBV eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBV eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_br'}</strong></label>
                                <select name="spSafeguardCountryBR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_io'}</strong></label>
                                <select name="spSafeguardCountryIO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bn'}</strong></label>
                                <select name="spSafeguardCountryBN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bg'}</strong></label>
                                <select name="spSafeguardCountryBG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bf'}</strong></label>
                                <select name="spSafeguardCountryBF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bi'}</strong></label>
                                <select name="spSafeguardCountryBI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryC">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cv'}</strong></label>
                                <select name="spSafeguardCountryCV" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCV eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCV eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kh'}</strong></label>
                                <select name="spSafeguardCountryKH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cm'}</strong></label>
                                <select name="spSafeguardCountryCM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ca'}</strong></label>
                                <select name="spSafeguardCountryCA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ky'}</strong></label>
                                <select name="spSafeguardCountryKY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cf'}</strong></label>
                                <select name="spSafeguardCountryCF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_td'}</strong></label>
                                <select name="spSafeguardCountryTD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cl'}</strong></label>
                                <select name="spSafeguardCountryCL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cn'}</strong></label>
                                <select name="spSafeguardCountryCN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cx'}</strong></label>
                                <select name="spSafeguardCountryCX" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCX eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCX eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cc'}</strong></label>
                                <select name="spSafeguardCountryCC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_co'}</strong></label>
                                <select name="spSafeguardCountryCO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_km'}</strong></label>
                                <select name="spSafeguardCountryKM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cg'}</strong></label>
                                <select name="spSafeguardCountryCG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cd'}</strong></label>
                                <select name="spSafeguardCountryCD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ck'}</strong></label>
                                <select name="spSafeguardCountryCK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cr'}</strong></label>
                                <select name="spSafeguardCountryCR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ci'}</strong></label>
                                <select name="spSafeguardCountryCI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_hr'}</strong></label>
                                <select name="spSafeguardCountryHR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryHR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryHR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cu'}</strong></label>
                                <select name="spSafeguardCountryCU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cw'}</strong></label>
                                <select name="spSafeguardCountryCW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cy'}</strong></label>
                                <select name="spSafeguardCountryCY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_cz'}</strong></label>
                                <select name="spSafeguardCountryCZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryD">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_dk'}</strong></label>
                                <select name="spSafeguardCountryDK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryDK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryDK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_dj'}</strong></label>
                                <select name="spSafeguardCountryDJ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryDJ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryDJ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_dm'}</strong></label>
                                <select name="spSafeguardCountryDM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryDM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryDM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_do'}</strong></label>
                                <select name="spSafeguardCountryDO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryDO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryDO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryE">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ec'}</strong></label>
                                <select name="spSafeguardCountryEC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryEC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryEC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_eg'}</strong></label>
                                <select name="spSafeguardCountryEG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryEG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryEG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sv'}</strong></label>
                                <select name="spSafeguardCountrySV" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySV eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySV eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gq'}</strong></label>
                                <select name="spSafeguardCountryGQ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGQ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGQ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_er'}</strong></label>
                                <select name="spSafeguardCountryER" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryER eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryER eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ee'}</strong></label>
                                <select name="spSafeguardCountryEE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryEE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryEE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_et'}</strong></label>
                                <select name="spSafeguardCountryET" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryET eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryET eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryF">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_fk'}</strong></label>
                                <select name="spSafeguardCountryFK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryFK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryFK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_fo'}</strong></label>
                                <select name="spSafeguardCountryFO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryFO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryFO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_fj'}</strong></label>
                                <select name="spSafeguardCountryFJ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryFJ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryFJ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_fi'}</strong></label>
                                <select name="spSafeguardCountryFI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryFI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryFI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_fr'}</strong></label>
                                <select name="spSafeguardCountryFR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryFR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryFR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gf'}</strong></label>
                                <select name="spSafeguardCountryGF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pf'}</strong></label>
                                <select name="spSafeguardCountryPF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tf'}</strong></label>
                                <select name="spSafeguardCountryTF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryG">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ga'}</strong></label>
                                <select name="spSafeguardCountryGA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gm'}</strong></label>
                                <select name="spSafeguardCountryGM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ge'}</strong></label>
                                <select name="spSafeguardCountryGE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_de'}</strong></label>
                                <select name="spSafeguardCountryDE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryDE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryDE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gh'}</strong></label>
                                <select name="spSafeguardCountryGH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gi'}</strong></label>
                                <select name="spSafeguardCountryGI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gr'}</strong></label>
                                <select name="spSafeguardCountryGR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gl'}</strong></label>
                                <select name="spSafeguardCountryGL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gd'}</strong></label>
                                <select name="spSafeguardCountryGD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gp'}</strong></label>
                                <select name="spSafeguardCountryGP" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGP eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGP eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gu'}</strong></label>
                                <select name="spSafeguardCountryGU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gt'}</strong></label>
                                <select name="spSafeguardCountryGT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gg'}</strong></label>
                                <select name="spSafeguardCountryGG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gn'}</strong></label>
                                <select name="spSafeguardCountryGN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gw'}</strong></label>
                                <select name="spSafeguardCountryGW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gy'}</strong></label>
                                <select name="spSafeguardCountryGY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryH">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ht'}</strong></label>
                                <select name="spSafeguardCountryHT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryHT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryHT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_hm'}</strong></label>
                                <select name="spSafeguardCountryHM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryHM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryHM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_va'}</strong></label>
                                <select name="spSafeguardCountryVA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_hn'}</strong></label>
                                <select name="spSafeguardCountryHN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryHN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryHN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_hk'}</strong></label>
                                <select name="spSafeguardCountryHK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryHK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryHK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_hu'}</strong></label>
                                <select name="spSafeguardCountryHU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryHU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryHU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryI">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_is'}</strong></label>
                                <select name="spSafeguardCountryIS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_in'}</strong></label>
                                <select name="spSafeguardCountryIN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_id'}</strong></label>
                                <select name="spSafeguardCountryID" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryID eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryID eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ir'}</strong></label>
                                <select name="spSafeguardCountryIR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_iq'}</strong></label>
                                <select name="spSafeguardCountryIQ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIQ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIQ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ie'}</strong></label>
                                <select name="spSafeguardCountryIE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_im'}</strong></label>
                                <select name="spSafeguardCountryIM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_il'}</strong></label>
                                <select name="spSafeguardCountryIL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_it'}</strong></label>
                                <select name="spSafeguardCountryIT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryIT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryIT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryJ">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_jm'}</strong></label>
                                <select name="spSafeguardCountryJM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryJM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryJM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_jp'}</strong></label>
                                <select name="spSafeguardCountryJP" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryJP eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryJP eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_je'}</strong></label>
                                <select name="spSafeguardCountryJE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryJE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryJE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_jo'}</strong></label>
                                <select name="spSafeguardCountryJO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryJO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryJO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryK">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kz'}</strong></label>
                                <select name="spSafeguardCountryKZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ke'}</strong></label>
                                <select name="spSafeguardCountryKE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ki'}</strong></label>
                                <select name="spSafeguardCountryKI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kp'}</strong></label>
                                <select name="spSafeguardCountryKP" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKP eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKP eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kr'}</strong></label>
                                <select name="spSafeguardCountryKR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kw'}</strong></label>
                                <select name="spSafeguardCountryKW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kg'}</strong></label>
                                <select name="spSafeguardCountryKG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryL">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_la'}</strong></label>
                                <select name="spSafeguardCountryLA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lv'}</strong></label>
                                <select name="spSafeguardCountryLV" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLV eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLV eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lb'}</strong></label>
                                <select name="spSafeguardCountryLB" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLB eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLB eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ls'}</strong></label>
                                <select name="spSafeguardCountryLS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lr'}</strong></label>
                                <select name="spSafeguardCountryLR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ly'}</strong></label>
                                <select name="spSafeguardCountryLY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_li'}</strong></label>
                                <select name="spSafeguardCountryLI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lt'}</strong></label>
                                <select name="spSafeguardCountryLT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lu'}</strong></label>
                                <select name="spSafeguardCountryLU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryM">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mo'}</strong></label>
                                <select name="spSafeguardCountryMO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mk'}</strong></label>
                                <select name="spSafeguardCountryMK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mg'}</strong></label>
                                <select name="spSafeguardCountryMG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mw'}</strong></label>
                                <select name="spSafeguardCountryMW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_my'}</strong></label>
                                <select name="spSafeguardCountryMY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mv'}</strong></label>
                                <select name="spSafeguardCountryMV" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMV eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMV eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ml'}</strong></label>
                                <select name="spSafeguardCountryML" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryML eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryML eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mt'}</strong></label>
                                <select name="spSafeguardCountryMT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mh'}</strong></label>
                                <select name="spSafeguardCountryMH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mq'}</strong></label>
                                <select name="spSafeguardCountryMQ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMQ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMQ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mr'}</strong></label>
                                <select name="spSafeguardCountryMR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mu'}</strong></label>
                                <select name="spSafeguardCountryMU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_yt'}</strong></label>
                                <select name="spSafeguardCountryYT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryYT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryYT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mx'}</strong></label>
                                <select name="spSafeguardCountryMX" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMX eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMX eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_fm'}</strong></label>
                                <select name="spSafeguardCountryFM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryFM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryFM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_md'}</strong></label>
                                <select name="spSafeguardCountryMD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mc'}</strong></label>
                                <select name="spSafeguardCountryMC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mn'}</strong></label>
                                <select name="spSafeguardCountryMN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_me'}</strong></label>
                                <select name="spSafeguardCountryME" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryME eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryME eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ms'}</strong></label>
                                <select name="spSafeguardCountryMS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ma'}</strong></label>
                                <select name="spSafeguardCountryMA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mz'}</strong></label>
                                <select name="spSafeguardCountryMZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mm'}</strong></label>
                                <select name="spSafeguardCountryMM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryN">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_na'}</strong></label>
                                <select name="spSafeguardCountryNA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_nr'}</strong></label>
                                <select name="spSafeguardCountryNR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_np'}</strong></label>
                                <select name="spSafeguardCountryNP" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNP eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNP eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_nl'}</strong></label>
                                <select name="spSafeguardCountryNL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_nc'}</strong></label>
                                <select name="spSafeguardCountryNC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_nz'}</strong></label>
                                <select name="spSafeguardCountryNZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ni'}</strong></label>
                                <select name="spSafeguardCountryNI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ne'}</strong></label>
                                <select name="spSafeguardCountryNE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ng'}</strong></label>
                                <select name="spSafeguardCountryNG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_nu'}</strong></label>
                                <select name="spSafeguardCountryNU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_nf'}</strong></label>
                                <select name="spSafeguardCountryNF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mp'}</strong></label>
                                <select name="spSafeguardCountryMP" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMP eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMP eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_no'}</strong></label>
                                <select name="spSafeguardCountryNO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryNO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryNO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryO">
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_om'}</strong></label>
                        <select name="spSafeguardCountryOM" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryOM eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryOM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryP">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pk'}</strong></label>
                                <select name="spSafeguardCountryPK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pw'}</strong></label>
                                <select name="spSafeguardCountryPW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ps'}</strong></label>
                                <select name="spSafeguardCountryPS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pa'}</strong></label>
                                <select name="spSafeguardCountryPA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pg'}</strong></label>
                                <select name="spSafeguardCountryPG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_py'}</strong></label>
                                <select name="spSafeguardCountryPY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pe'}</strong></label>
                                <select name="spSafeguardCountryPE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ph'}</strong></label>
                                <select name="spSafeguardCountryPH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pn'}</strong></label>
                                <select name="spSafeguardCountryPN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pl'}</strong></label>
                                <select name="spSafeguardCountryPL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pt'}</strong></label>
                                <select name="spSafeguardCountryPT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pr'}</strong></label>
                                <select name="spSafeguardCountryPR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryQ">
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_qa'}</strong></label>
                        <select name="spSafeguardCountryQA" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryQA eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryQA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryR">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_re'}</strong></label>
                                <select name="spSafeguardCountryRE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryRE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryRE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ro'}</strong></label>
                                <select name="spSafeguardCountryRO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryRO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryRO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ru'}</strong></label>
                                <select name="spSafeguardCountryRU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryRU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryRU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_rw'}</strong></label>
                                <select name="spSafeguardCountryRW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryRW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryRW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryS">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_bl'}</strong></label>
                                <select name="spSafeguardCountryBL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryBL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryBL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sh'}</strong></label>
                                <select name="spSafeguardCountrySH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_kn'}</strong></label>
                                <select name="spSafeguardCountryKN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryKN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryKN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lc'}</strong></label>
                                <select name="spSafeguardCountryLC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_mf'}</strong></label>
                                <select name="spSafeguardCountryMF" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryMF eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryMF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_pm'}</strong></label>
                                <select name="spSafeguardCountryPM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryPM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryPM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_vc'}</strong></label>
                                <select name="spSafeguardCountryVC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ws'}</strong></label>
                                <select name="spSafeguardCountryWS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryWS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryWS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sn'}</strong></label>
                                <select name="spSafeguardCountrySN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_st'}</strong></label>
                                <select name="spSafeguardCountryST" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryST eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryST eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sa'}</strong></label>
                                <select name="spSafeguardCountrySA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_rs'}</strong></label>
                                <select name="spSafeguardCountryRS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryRS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryRS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sc'}</strong></label>
                                <select name="spSafeguardCountrySC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sl'}</strong></label>
                                <select name="spSafeguardCountrySL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sg'}</strong></label>
                                <select name="spSafeguardCountrySG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sx'}</strong></label>
                                <select name="spSafeguardCountrySX" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySX eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySX eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sk'}</strong></label>
                                <select name="spSafeguardCountrySK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_si'}</strong></label>
                                <select name="spSafeguardCountrySI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sb'}</strong></label>
                                <select name="spSafeguardCountrySB" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySB eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySB eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_so'}</strong></label>
                                <select name="spSafeguardCountrySO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_za'}</strong></label>
                                <select name="spSafeguardCountryZA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryZA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryZA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gs'}</strong></label>
                                <select name="spSafeguardCountryGS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ss'}</strong></label>
                                <select name="spSafeguardCountrySS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_es'}</strong></label>
                                <select name="spSafeguardCountryES" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryES eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryES eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_lk'}</strong></label>
                                <select name="spSafeguardCountryLK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryLK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryLK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sd'}</strong></label>
                                <select name="spSafeguardCountrySD" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySD eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySD eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sr'}</strong></label>
                                <select name="spSafeguardCountrySR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sj'}</strong></label>
                                <select name="spSafeguardCountrySJ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySJ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySJ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sz'}</strong></label>
                                <select name="spSafeguardCountrySZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_se'}</strong></label>
                                <select name="spSafeguardCountrySE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ch'}</strong></label>
                                <select name="spSafeguardCountryCH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryCH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryCH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_sy'}</strong></label>
                                <select name="spSafeguardCountrySY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountrySY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountrySY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryT">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tw'}</strong></label>
                                <select name="spSafeguardCountryTW" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTW eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tj'}</strong></label>
                                <select name="spSafeguardCountryTJ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTJ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTJ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tz'}</strong></label>
                                <select name="spSafeguardCountryTZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_th'}</strong></label>
                                <select name="spSafeguardCountryTH" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTH eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tl'}</strong></label>
                                <select name="spSafeguardCountryTL" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTL eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTL eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tg'}</strong></label>
                                <select name="spSafeguardCountryTG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tk'}</strong></label>
                                <select name="spSafeguardCountryTK" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTK eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTK eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_to'}</strong></label>
                                <select name="spSafeguardCountryTO" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTO eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTO eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tt'}</strong></label>
                                <select name="spSafeguardCountryTT" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTT eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTT eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tn'}</strong></label>
                                <select name="spSafeguardCountryTN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tr'}</strong></label>
                                <select name="spSafeguardCountryTR" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTR eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTR eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tm'}</strong></label>
                                <select name="spSafeguardCountryTM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tc'}</strong></label>
                                <select name="spSafeguardCountryTC" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTC eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTC eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_tv'}</strong></label>
                                <select name="spSafeguardCountryTV" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryTV eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryTV eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryU">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ug'}</strong></label>
                                <select name="spSafeguardCountryUG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryUG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryUG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ua'}</strong></label>
                                <select name="spSafeguardCountryUA" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryUA eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryUA eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ae'}</strong></label>
                                <select name="spSafeguardCountryAE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryAE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryAE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_gb'}</strong></label>
                                <select name="spSafeguardCountryGB" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryGB eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryGB eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_us'}</strong></label>
                                <select name="spSafeguardCountryUS" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryUS eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryUS eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_um'}</strong></label>
                                <select name="spSafeguardCountryUM" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryUM eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryUM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_uy'}</strong></label>
                                <select name="spSafeguardCountryUY" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryUY eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryUY eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_uz'}</strong></label>
                                <select name="spSafeguardCountryUZ" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryUZ eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryUZ eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryV">
                    <div class="row">
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_vu'}</strong></label>
                                <select name="spSafeguardCountryVU" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVU eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVU eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_ve'}</strong></label>
                                <select name="spSafeguardCountryVE" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVE eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_vn'}</strong></label>
                                <select name="spSafeguardCountryVN" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVN eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVN eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_vg'}</strong></label>
                                <select name="spSafeguardCountryVG" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVG eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVG eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label class="control-label"><strong>{lang key='sp_country_vi'}</strong></label>
                                <select name="spSafeguardCountryVI" class="form-control">
                                    <option class="sp-select-option-green" value="1" {if $spSafeguardCountryVI eq "1"} selected="selected" {/if}>Aktivieren</option>
                                    <option class="sp-select-option-red" value="0" {if $spSafeguardCountryVI eq "0"} selected="selected" {/if}>Deaktivieren</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryW">
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_wf'}</strong></label>
                        <select name="spSafeguardCountryWF" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryWF eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryWF eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_eh'}</strong></label>
                        <select name="spSafeguardCountryEH" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryEH eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryEH eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryY">
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_ye'}</strong></label>
                        <select name="spSafeguardCountryYE" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryYE eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryYE eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="countryZ">
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_zm'}</strong></label>
                        <select name="spSafeguardCountryZM" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryZM eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryZM eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="control-label"><strong>{lang key='sp_country_zw'}</strong></label>
                        <select name="spSafeguardCountryZW" class="form-control">
                            <option class="sp-select-option-green" value="1" {if $spSafeguardCountryZW eq "1"} selected="selected" {/if}>Aktivieren</option>
                            <option class="sp-select-option-red" value="0" {if $spSafeguardCountryZW eq "0"} selected="selected" {/if}>Deaktivieren</option>
                        </select>
                    </div>
                </div>
            </div>

        </div>
        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_safeguard_country" value="Einstellungen speichern" />
            </div>
        </div>
    </form>

</div>