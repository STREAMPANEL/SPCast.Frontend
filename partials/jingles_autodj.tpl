<div id="xmlOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Jingles<br />
                <small>Sie können diesen Bereich nutzen, um Ihre Jingles oder ähnliche Inhalte automatisch im AutoDJ einspielen zu lassen.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="https://www.spcast.eu/faq/allgemein/haeufig-gestellte-fragen-zu-den-jingles/" class="btn mr-2 btn-danger" target="_blank" rel="noopener">FAQ</a>
        </div>
    </div>
    <div class="card-body">

        <form id="SPValidationEntry" method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">

            <div class="form-group">
                <label for="spJinglesTitle"><strong>{lang key="sp_tac_content_title"}</strong></label>
                <input class="form-control" name="spJinglesTitle" id="spJinglesTitle"
                    value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesTitle}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesTitle2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesTitle3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesTitle4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesTitle5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesTitle6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesTitle7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesTitle8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesTitle9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesTitle10}{/if}"
                    aria-describedby="spJinglesTitleHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required" data-fv-not-empty="true"
                    data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="2" maxlength="50" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (2-50)" />
                <small id="spJinglesTitleHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_title_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spJinglesURLBefore"><strong>{lang key="sp_tac_content_filebefore"} </strong></label>
                <input class="form-control" name="spJinglesURLBefore" id="spJinglesURLBefore"
                    value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesURLBefore}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesURLBefore2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesURLBefore3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesURLBefore4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesURLBefore5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesURLBefore6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesURLBefore7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesURLBefore8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesURLBefore9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesURLBefore10}{/if}"
                    aria-describedby="spJinglesURLBeforeHelpBlock" placeholder="{lang key="sp_input_placeholder_optional"}" autocomplete="off" type="url" data-fv-uri="true"
                    data-fv-uri___protocol="http,https" data-fv-uri___message="{lang key="sp_input_url_invalid"}" minlength="15" maxlength="250" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (15-250)" />
                <small id="spJinglesURLBeforeHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_filebefore_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spJinglesURL"><strong>{lang key="sp_tac_content_file"}</strong></label>
                <input class="form-control" name="spJinglesURL" id="spJinglesURL"
                    value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesURL}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesURL2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesURL3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesURL4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesURL5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesURL6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesURL7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesURL8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesURL9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesURL10}{/if}"
                    aria-describedby="spJinglesURLHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="url" data-fv-uri="true"
                    data-fv-uri___protocol="http,https" data-fv-uri___message="{lang key="sp_input_url_invalid"}" required="required" data-fv-not-empty="true"
                    data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="15" maxlength="250" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (15-250)" />
                <small id="spJinglesURLHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_file_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spJinglesURLAfter"><strong>{lang key="sp_tac_content_fileafter"}</strong></label>
                <input class="form-control" name="spJinglesURLAfter" id="spJinglesURLAfter"
                    value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesURLAfter}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesURLAfter2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesURLAfter3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesURLAfter4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesURLAfter5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesURLAfter6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesURLAfter7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesURLAfter8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesURLAfter9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesURLAfter10}{/if}"
                    aria-describedby="spJinglesURLAfterHelpBlock" placeholder="{lang key="sp_input_placeholder_optional"}" autocomplete="off" type="url" data-fv-uri="true"
                    data-fv-uri___protocol="http,https" data-fv-uri___message="{lang key="sp_input_url_invalid"}" minlength="15" maxlength="250" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (15-250)" />
                <small id="spJinglesURLAfterHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_fileafter_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spJinglesDay"><strong>{lang key="sp_tac_content_day"}</strong></label>
                <input class="form-control" name="spJinglesDay" id="spJinglesDay"
                    value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesDay}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesDay2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesDay3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesDay4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesDay5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesDay6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesDay7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesDay8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesDay9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesDay10}{/if}"
                    aria-describedby="spJinglesDayHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required" data-fv-not-empty="true"
                    data-fv-not-empty___message="{lang key="sp_input_not_empty"}"
                    pattern="^[0-6]$|^[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]$"
                    data-fv-regexp="true" data-fv-regexp___message="{lang key="sp_input_regexp_failed"}" minlength="1" maxlength="13" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (1-13)" />
                <small id="spJinglesDayHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_day_desc"}<br><br>
                    &bull; {lang key="sp_mo"} = 1<br>
                    &bull; {lang key="sp_di"} = 2<br>
                    &bull; {lang key="sp_mi"} = 3<br>
                    &bull; {lang key="sp_do"} = 4<br>
                    &bull; {lang key="sp_fr"} = 5<br>
                    &bull; {lang key="sp_sa"} = 6<br>
                    &bull; {lang key="sp_so"} = 0<br><br>
                    <span class="sp-red">{lang key="sp_tac_content_day_desc_2"}</span><br>
                    <strong>{lang key="sp_example"}:</strong> 0 | 0,1 | 1,2,3 | 0,1,2,3,4,5,6
                </small>
            </div>

            <div class="row">
                <div class="col-sm">
                    <div class="form-group">
                        <label for="spJinglesStartHour"><strong>{lang key="sp_tac_content_start_hour"}</strong></label>
                        <input class="form-control" name="spJinglesStartHour" id="spJinglesStartHour"
                            value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesStartHour}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesStartHour2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesStartHour3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesStartHour4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesStartHour5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesStartHour6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesStartHour7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesStartHour8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesStartHour9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesStartHour10}{/if}"
                            aria-describedby="spJinglesStartHourHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required"
                            data-fv-not-empty="true" data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="1" maxlength="75" data-fv-string-length="true"
                            data-fv-string-length___message="{lang key="sp_input_lenght"} / (1-75)" />
                        <small id="spJinglesStartHourHelpBlock" class="form-text text-muted">
                            {lang key="sp_tac_content_start_hour_desc"}<br><br>
                            <strong>{lang key="sp_example"}</strong><br>
                            &bull; 21 {lang key="sp_clock"} = 21<br>
                            &bull; 12 {lang key="sp_clock"} = 12<br>
                            &bull; {lang key="sp_cron_every_2_hours"} = */2<br>
                            &bull; {lang key="sp_cron_every_6_hours"} = */6
                        </small>
                    </div>
                </div>

                <div class="col-sm">
                    <div class="form-group">
                        <label for="spJinglesStartMinute"><strong>{lang key="sp_tac_content_start_minute"}</strong></label>
                        <input class="form-control" name="spJinglesStartMinute" id="spJinglesStartMinute"
                            value="{if $smarty.get.spJinglesNumber == "1"}{$spJinglesStartMinute}{elseif $smarty.get.spJinglesNumber == "2"}{$spJinglesStartMinute2}{elseif $smarty.get.spJinglesNumber == "3"}{$spJinglesStartMinute3}{elseif $smarty.get.spJinglesNumber == "4"}{$spJinglesStartMinute4}{elseif $smarty.get.spJinglesNumber == "5"}{$spJinglesStartMinute5}{elseif $smarty.get.spJinglesNumber == "6"}{$spJinglesStartMinute6}{elseif $smarty.get.spJinglesNumber == "7"}{$spJinglesStartMinute7}{elseif $smarty.get.spJinglesNumber == "8"}{$spJinglesStartMinute8}{elseif $smarty.get.spJinglesNumber == "9"}{$spJinglesStartMinute9}{elseif $smarty.get.spJinglesNumber == "10"}{$spJinglesStartMinute10}{/if}"
                            aria-describedby="spJinglesStartMinuteHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required"
                            data-fv-not-empty="true" data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="2" maxlength="75" data-fv-string-length="true"
                            data-fv-string-length___message="{lang key="sp_input_lenght"} / (2-75)" />
                        <small id="spJinglesStartMinuteHelpBlock" class="form-text text-muted">
                            {lang key="sp_tac_content_start_minute_desc"}<br><br>
                            <strong>{lang key="sp_example"}</strong><br>
                            &bull; 00:15 {lang key="sp_clock"} = 15<br>
                            &bull; 00:00 {lang key="sp_clock"} = 00<br>
                            &bull; 00:15/30/45 01:15/30/45 {lang key="sp_cron_at_every_15_minute"} = */15
                        </small>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    <input class="btn btn-success btn-block" type="submit" name="jingles_update_{$smarty.get.spJinglesNumber}" value="Jingle speichern" />
                </div>
                <div class="col-sm">
                    <input class="btn btn-danger btn-block" type="submit" name="jingles_delete_{$smarty.get.spJinglesNumber}" value="Jingle löschen" />
                </div>
            </div>

        </form>
    </div>
</div>