<div id="loadbalancerOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Programmvorschau / Einstellungen
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=304"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "304"} btn-danger{else} btn-white{/if}">
                Programmvorschau
            </a>
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=307"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "307"} btn-danger{else} btn-white{/if}">
                Einstellungen
            </a>
        </div>
    </div>
    <div class="card-body">

        <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">

            <h3>META</h3>

            <div class="form-group">
                <label for="InputScheduleMetaTitle"><strong>Titel</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleMetaTitle" aria-describedby="InputScheduleMetaTitle"
                    placeholder="Geben Sie einen Titel für das HTML-Dokument an. Beispiel: {$spSettingsRadioName} Programmvorschau" name="spSettingsScheduleMetaTitle"
                    value="{$spSettingsScheduleMetaTitle}" />
            </div>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsScheduleMetaRobots" value="1" {if $spSettingsScheduleMetaRobots} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Robots / Suchmaschinen erlauben?
                </label>
            </div>

            <hr style="background-color: red;">

            <h3>Tabellen Header</h3>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsScheduleHeader" value="1" {if $spSettingsScheduleHeader} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Header aktivieren?
                </label>
            </div>

            <div class="form-group">
                <label for="InputScheduleHeader1"><strong>Header 1</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleHeader1" aria-describedby="InputScheduleHeader1" placeholder="Bennen Sie die Spalte. Beispiel: Start"
                    name="spSettingsScheduleHeader1" value="{$spSettingsScheduleHeader1}" />
            </div>

            <div class="form-group">
                <label for="InputScheduleHeader2"><strong>Header 2</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleHeader2" aria-describedby="InputScheduleHeader2" placeholder="Bennen Sie die Spalte. Beispiel: Ende"
                    name="spSettingsScheduleHeader2" value="{$spSettingsScheduleHeader2}" />
            </div>

            <div class="form-group">
                <label for="InputScheduleHeader3"><strong>Header 3</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleHeader3" aria-describedby="InputScheduleHeader3" placeholder="Bennen Sie die Spalte. Beispiel: Playliste"
                    name="spSettingsScheduleHeader3" value="{$spSettingsScheduleHeader3}" />
            </div>

            <hr style="background-color: red;">

            <h3>Tabellen Footer</h3>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsScheduleFooter" value="1" {if $spSettingsScheduleFooter} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Footer aktivieren?
                </label>
            </div>


            <div class="form-group">
                <label for="InputScheduleFooterLeft"><strong>Footer / Links</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleFooterLeft" aria-describedby="InputScheduleFooterLeft" placeholder="Bennen Sie die Spalte."
                    name="spSettingsScheduleFooterLeft" value="{$spSettingsScheduleFooterLeft}" />
            </div>

            <div class="form-group">
                <label for="InputScheduleFooterRight"><strong>Footer / Rechts</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleFooterRight" aria-describedby="InputScheduleFooterRight"
                    placeholder="Bennen Sie die Spalte. Beispiel: Zuletzt aktualisiert:" name="spSettingsScheduleFooterRight" value="{$spSettingsScheduleFooterRight}" />
            </div>

            <hr style="background-color: red;">

            <h3>Sonstiges</h3>

            <div class="form-group">
                <label for="InputScheduleClock"><strong>Uhr</strong></label>
                <input type="text" class="form-control" id="spSettingsScheduleClock" aria-describedby="InputScheduleClock" placeholder="Bennen Sie die Spalte. Beispiel: Uhr"
                    name="spSettingsScheduleClock" value="{$spSettingsScheduleClock}" />
            </div>

            <div class="form-group">
                <label for="InputScheduleRows"><strong>Anzahl der Einträge</strong></label>
                <input type="number" class="form-control" id="spSettingsScheduleRows" aria-describedby="InputScheduleRows" placeholder="Geben Sie die Anzahl der Einträge an. Beispiel: 3"
                    name="spSettingsScheduleRows" value="{$spSettingsScheduleRows}" />
            </div>

            <hr style="background-color: red;">

            <h3>CSS-Einstellungen</h3>

            <p>Um die Programmvorschau über CSS anzupassen, ist grundlegendes Verständnis von CSS/HTML erforderlich.</p>

            <div class="form-group">
                <label for="custom_css"><strong>CSS-Einstellungen</strong></label>
                <small id="custom_cssHelpBlock" class="form-text text-muted">
                    Bearbeiten Sie das CSS der Programmvorschau. Dadurch wird es Ihnen möglich sein, die Programmvorschau für Ihre Homepage anzupassen.
                </small><br />
                <textarea class="form-control" name="spSettingsScheduleCSS" id="spSettingsScheduleCSS" value="{$spSettingsScheduleCSS}" style="height: 200px;">{$spSettingsScheduleCSS}</textarea>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_schedule" value="Einstellungen speichern" />
            </div>
        </form>

    </div>
</div>

<!-- Convert values -->
{assign var="base64Params" value="&thead={$spSettingsScheduleHeader}&thead1={$spSettingsScheduleHeader1|urlencode}&thead2={$spSettingsScheduleHeader2|urlencode}&thead3={$spSettingsScheduleHeader3|urlencode}&tfoot={$spSettingsScheduleFooter}&tfoot1={$spSettingsScheduleFooterLeft|urlencode}&tfoot2={$spSettingsScheduleFooterRight|urlencode}&robots={$spSettingsScheduleMetaRobots}&title={$spSettingsScheduleMetaTitle|urlencode}&clock={$spSettingsScheduleClock|urlencode}&rows={$spSettingsScheduleRows}"|base64_encode|replace:"==":""|replace:"=":""}

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Einbaucode
            </h3>
        </div>
    </div>
    <div class="card-body">

        <p>Dieser Einbaucode entspricht den oberen Einstellungen. Wenn Sie die Einstellungen ändern, müssen Sie auch den Einbaucode austauschen.</p>

        <pre class="language-html">
        <code class="language-html">
        &lt;iframe loading=&quot;lazy&quot; id=&quot;spExternalIframeSPCastProgramPreview&quot; frameborder=&quot;0&quot; width=&quot;256&quot; height=&quot;256&quot; src=&quot;https://{$spHostnameLoadbalancer}/scripts/schedule.php?values={$base64Params}&quot; title=&quot;SPCast.eu: {$spSettingsScheduleMetaTitle}&quot;&gt;&lt;/iframe&gt;
        </code>
        </pre>

            <p>Testen Sie am besten vorher wie Ihre Programmvorschau aussehen wird indem Sie auf folgenden Link klicken.<br /><br />
                <a href="https://{$spHostnameLoadbalancer}/scripts/schedule.php?values={$base64Params}" target="_blank"
                    rel="noopener">https://{$spHostnameLoadbalancer}/scripts/schedule.php?values={$base64Params}</a>
            </p>

    </div>
</div>

<!-- Preview -->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Skriptvorschau
            </h3>
        </div>
    </div>
    <div class="card-body">
            <iframe id="spExternalIframeSPCastProgramPreview" frameborder="0" src="https://{$spHostnameLoadbalancer}/scripts/schedule.php?values={$base64Params}"
                title="SPCast.eu: {$spSettingsScheduleMetaTitle}"></iframe>
    </div>
</div>