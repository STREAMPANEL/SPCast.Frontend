<div id="xmlOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Nachrichten<br />
                <small>Sie können diesen Bereich nutzen, um Ihre Nachrichten automatisch im AutoDJ einspielen zu lassen.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="https://www.spcast.eu/faq/allgemein/haeufig-gestellte-fragen-zu-den-nachrichten/" class="btn mr-2 btn-danger" target="_blank" rel="noopener">FAQ</a>
        </div>
    </div>
    <div class="card-body">

        <form id="SPValidationEntry" method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">

            <div class="form-group">
                <label for="spNewsTitle"><strong>{lang key="sp_tac_content_title"}</strong></label>
                <input class="form-control" name="spNewsTitle" id="spNewsTitle"
                    value="{if $smarty.get.spNewsNumber == "1"}{$spNewsTitle}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsTitle2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsTitle3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsTitle4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsTitle5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsTitle6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsTitle7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsTitle8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsTitle9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsTitle10}{/if}"
                    aria-describedby="spNewsTitleHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required" data-fv-not-empty="true"
                    data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="2" maxlength="50" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (2-50)" />
                <small id="spNewsTitleHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_title_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spNewsURLBefore"><strong>{lang key="sp_tac_content_filebefore"} </strong></label>
                <input class="form-control" name="spNewsURLBefore" id="spNewsURLBefore"
                    value="{if $smarty.get.spNewsNumber == "1"}{$spNewsURLBefore}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsURLBefore2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsURLBefore3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsURLBefore4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsURLBefore5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsURLBefore6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsURLBefore7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsURLBefore8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsURLBefore9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsURLBefore10}{/if}"
                    aria-describedby="spNewsURLBeforeHelpBlock" placeholder="{lang key="sp_input_placeholder_optional"}" autocomplete="off" type="url" data-fv-uri="true"
                    data-fv-uri___protocol="http,https" data-fv-uri___message="{lang key="sp_input_url_invalid"}" minlength="15" maxlength="250" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (15-250)" />
                <small id="spNewsURLBeforeHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_filebefore_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spNewsURL"><strong>{lang key="sp_tac_content_file"}</strong></label>
                <input class="form-control" name="spNewsURL" id="spNewsURL"
                    value="{if $smarty.get.spNewsNumber == "1"}{$spNewsURL}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsURL2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsURL3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsURL4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsURL5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsURL6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsURL7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsURL8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsURL9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsURL10}{/if}"
                    aria-describedby="spNewsURLHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="url" data-fv-uri="true" data-fv-uri___protocol="http,https"
                    data-fv-uri___message="{lang key="sp_input_url_invalid"}" required="required" data-fv-not-empty="true" data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="15"
                    maxlength="250" data-fv-string-length="true" data-fv-string-length___message="{lang key="sp_input_lenght"} / (15-250)" />
                <small id="spNewsURLHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_file_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spNewsURLAfter"><strong>{lang key="sp_tac_content_fileafter"}</strong></label>
                <input class="form-control" name="spNewsURLAfter" id="spNewsURLAfter"
                    value="{if $smarty.get.spNewsNumber == "1"}{$spNewsURLAfter}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsURLAfter2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsURLAfter3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsURLAfter4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsURLAfter5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsURLAfter6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsURLAfter7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsURLAfter8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsURLAfter9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsURLAfter10}{/if}"
                    aria-describedby="spNewsURLAfterHelpBlock" placeholder="{lang key="sp_input_placeholder_optional"}" autocomplete="off" type="url" data-fv-uri="true"
                    data-fv-uri___protocol="http,https" data-fv-uri___message="{lang key="sp_input_url_invalid"}" minlength="15" maxlength="250" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (15-250)" />
                <small id="spNewsURLAfterHelpBlock" class="form-text text-muted">
                    {lang key="sp_tac_content_fileafter_desc"}
                </small>
            </div>

            <div class="form-group">
                <label for="spNewsDay"><strong>{lang key="sp_tac_content_day"}</strong></label>
                <input class="form-control" name="spNewsDay" id="spNewsDay"
                    value="{if $smarty.get.spNewsNumber == "1"}{$spNewsDay}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsDay2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsDay3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsDay4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsDay5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsDay6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsDay7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsDay8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsDay9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsDay10}{/if}"
                    aria-describedby="spNewsDayHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required" data-fv-not-empty="true"
                    data-fv-not-empty___message="{lang key="sp_input_not_empty"}"
                    pattern="^[0-6]$|^[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]$|^[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]\,[0-6]$"
                    data-fv-regexp="true" data-fv-regexp___message="{lang key="sp_input_regexp_failed"}" minlength="1" maxlength="13" data-fv-string-length="true"
                    data-fv-string-length___message="{lang key="sp_input_lenght"} / (1-13)" />
                <small id="spNewsDayHelpBlock" class="form-text text-muted">
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
                        <label for="spNewsStartHour"><strong>{lang key="sp_tac_content_start_hour"}</strong></label>
                        <input class="form-control" name="spNewsStartHour" id="spNewsStartHour"
                            value="{if $smarty.get.spNewsNumber == "1"}{$spNewsStartHour}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsStartHour2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsStartHour3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsStartHour4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsStartHour5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsStartHour6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsStartHour7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsStartHour8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsStartHour9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsStartHour10}{/if}"
                            aria-describedby="spNewsStartHourHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required"
                            data-fv-not-empty="true" data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="1" maxlength="75" data-fv-string-length="true"
                            data-fv-string-length___message="{lang key="sp_input_lenght"} / (1-75)" />
                        <small id="spNewsStartHourHelpBlock" class="form-text text-muted">
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
                        <label for="spNewsStartMinute"><strong>{lang key="sp_tac_content_start_minute"}</strong></label>
                        <input class="form-control" name="spNewsStartMinute" id="spNewsStartMinute"
                            value="{if $smarty.get.spNewsNumber == "1"}{$spNewsStartMinute}{elseif $smarty.get.spNewsNumber == "2"}{$spNewsStartMinute2}{elseif $smarty.get.spNewsNumber == "3"}{$spNewsStartMinute3}{elseif $smarty.get.spNewsNumber == "4"}{$spNewsStartMinute4}{elseif $smarty.get.spNewsNumber == "5"}{$spNewsStartMinute5}{elseif $smarty.get.spNewsNumber == "6"}{$spNewsStartMinute6}{elseif $smarty.get.spNewsNumber == "7"}{$spNewsStartMinute7}{elseif $smarty.get.spNewsNumber == "8"}{$spNewsStartMinute8}{elseif $smarty.get.spNewsNumber == "9"}{$spNewsStartMinute9}{elseif $smarty.get.spNewsNumber == "10"}{$spNewsStartMinute10}{/if}"
                            aria-describedby="spNewsStartMinuteHelpBlock" placeholder="{lang key="sp_input_placeholder_required"}" autocomplete="off" type="text" required="required"
                            data-fv-not-empty="true" data-fv-not-empty___message="{lang key="sp_input_not_empty"}" minlength="2" maxlength="75" data-fv-string-length="true"
                            data-fv-string-length___message="{lang key="sp_input_lenght"} / (2-75)" />
                        <small id="spNewsStartMinuteHelpBlock" class="form-text text-muted">
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
                    <input class="btn btn-success btn-block" type="submit" name="news_update_{$smarty.get.spNewsNumber}" value="Nachrichten speichern" />
                </div>
                <div class="col-sm">
                    <input class="btn btn-danger btn-block" type="submit" name="news_delete_{$smarty.get.spNewsNumber}" value="Nachrichten löschen" />
                </div>
            </div>

        </form>
    </div>
</div>