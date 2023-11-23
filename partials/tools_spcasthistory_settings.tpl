<div id="loadbalancerOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Programmhistorie / Einstellungen
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=303"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "303"} btn-danger{else} btn-white{/if}">
                Programmhistorie
            </a>
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=308"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "308"} btn-danger{else} btn-white{/if}">
                Einstellungen
            </a>
        </div>
    </div>
    <div class="card-body">

        <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">

            <h3>META</h3>

            <div class="form-group">
                <label for="InputHistoryMetaTitle"><strong>Titel</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryMetaTitle" aria-describedby="InputHistoryMetaTitle"
                    placeholder="Geben Sie einen Titel für das HTML-Dokument an. Beispiel: {$spSettingsRadioName} Programmvorschau" name="spSettingsHistoryMetaTitle"
                    value="{$spSettingsHistoryMetaTitle}" />
            </div>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsHistoryMetaRobots" value="1" {if $spSettingsHistoryMetaRobots} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Robots / Suchmaschinen erlauben?
                </label>
            </div>

            <hr style="background-color: red;">

            <h3>Tabellen Header</h3>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsHistoryHeader" value="1" {if $spSettingsHistoryHeader} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Header aktivieren?
                </label>
            </div>

            <div class="form-group">
                <label for="InputHistoryHeader1"><strong>Header 1</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryHeader1" aria-describedby="InputHistoryHeader1" placeholder="Bennen Sie die Spalte. Beispiel: Start"
                    name="spSettingsHistoryHeader1" value="{$spSettingsHistoryHeader1}" />
            </div>

            <div class="form-group">
                <label for="InputHistoryHeader2"><strong>Header 2</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryHeader2" aria-describedby="InputHistoryHeader2" placeholder="Bennen Sie die Spalte. Beispiel: Ende"
                    name="spSettingsHistoryHeader2" value="{$spSettingsHistoryHeader2}" />
            </div>

            <div class="form-group">
                <label for="InputHistoryHeader3"><strong>Header 3</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryHeader3" aria-describedby="InputHistoryHeader3" placeholder="Bennen Sie die Spalte. Beispiel: Playliste"
                    name="spSettingsHistoryHeader3" value="{$spSettingsHistoryHeader3}" />
            </div>

            <hr style="background-color: red;">

            <h3>Tabellen Footer</h3>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsHistoryFooter" value="1" {if $spSettingsHistoryFooter} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                    Footer aktivieren?
                </label>
            </div>


            <div class="form-group">
                <label for="InputHistoryFooterLeft"><strong>Footer / Links</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryFooterLeft" aria-describedby="InputHistoryFooterLeft" placeholder="Bennen Sie die Spalte."
                    name="spSettingsHistoryFooterLeft" value="{$spSettingsHistoryFooterLeft}" />
            </div>

            <div class="form-group">
                <label for="InputHistoryFooterRight"><strong>Footer / Rechts</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryFooterRight" aria-describedby="InputHistoryFooterRight"
                    placeholder="Bennen Sie die Spalte. Beispiel: Zuletzt aktualisiert:" name="spSettingsHistoryFooterRight" value="{$spSettingsHistoryFooterRight}" />
            </div>

            <hr style="background-color: red;">

            <h3>Sonstiges</h3>

            <div class="form-group">
                <label for="InputHistoryClock"><strong>Uhr</strong></label>
                <input type="text" class="form-control" id="spSettingsHistoryClock" aria-describedby="InputHistoryClock" placeholder="Bennen Sie die Spalte. Beispiel: Uhr"
                    name="spSettingsHistoryClock" value="{$spSettingsHistoryClock}" />
            </div>

            <div class="form-group">
                <label for="InputHistoryRows"><strong>Design Variante</strong></label>
                <input type="number" class="form-control" id="spSettingsHistoryVariant" aria-describedby="InputHistoryRows" placeholder="1, 2 oder 3" name="spSettingsHistoryVariant"
                    value="{$spSettingsHistoryVariant}" />
            </div>

            <hr style="background-color: red;">

            <h3>CSS-Einstellungen</h3>

            <p>Um die Programmvorschau über CSS anzupassen, ist grundlegendes Verständnis von CSS/HTML erforderlich.</p>

            <div class="form-group">
                <label for="custom_css"><strong>CSS-Einstellungen</strong></label>
                <small id="custom_cssHelpBlock" class="form-text text-muted">
                    Bearbeiten Sie das CSS der Programmhistorie. Dadurch wird es Ihnen möglich sein, die Programmhistorie für Ihre Homepage anzupassen.
                </small><br />
                <textarea class="form-control" name="spSettingsHistoryCSS" id="spSettingsHistoryCSS" value="{$spSettingsHistoryCSS}" style="height: 200px;">{$spSettingsHistoryCSS}</textarea>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_history" value="Einstellungen speichern" />
            </div>
        </form>

    </div>
</div>

<!-- Convert values -->
{assign var="base64Params" value="&thead={$spSettingsHistoryHeader}&thead1={$spSettingsHistoryHeader1|urlencode}&thead2={$spSettingsHistoryHeader2|urlencode}&thead3={$spSettingsHistoryHeader3|urlencode}&tfoot={$spSettingsHistoryFooter}&tfoot1={$spSettingsHistoryFooterLeft|urlencode}&tfoot2={$spSettingsHistoryFooterRight|urlencode}&robots={$spSettingsHistoryMetaRobots}&title={$spSettingsHistoryMetaTitle|urlencode}&clock={$spSettingsHistoryClock|urlencode}&variant={$spSettingsHistoryVariant}"|base64_encode|replace:"==":""|replace:"=":""}

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
        &lt;iframe loading=&quot;lazy&quot; id=&quot;spExternalIframeSPCastProgramHistory&quot; frameborder=&quot;0&quot; width=&quot;256&quot; height=&quot;256&quot; src=&quot;https://{$spHostnameLoadbalancer}/scripts/history.php?values={$base64Params}&quot; title=&quot;SPCast.eu: {$spSettingsHistoryMetaTitle}&quot;&gt;&lt;/iframe&gt;
        </code>
        </pre>

            <p>Testen Sie am besten vorher wie Ihre History aussehen wird indem Sie auf folgenden Link klicken.<br /><br />
                <a href="https://{$spHostnameLoadbalancer}/scripts/history.php?values={$base64Params}" target="_blank"
                    rel="noopener">https://{$spHostnameLoadbalancer}/scripts/history.php?values={$base64Params}</a>
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
            <iframe id="spExternalIframeSPCastHistory" frameborder="0" src="https://{$spHostnameLoadbalancer}/scripts/history.php?values={$base64Params}"
                title="SPCast.eu: {$spSettingsHistoryMetaTitle}"></iframe>
    </div>
</div>