<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Programmvorschau
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
        <p>Die Daten der Programmvorschau kommen direkt vom AutoDJ und gibt auch nur die Planungen der angelegten Playlisten im AutoDJ aus.</p>

        <p>Wir empfehlen den Einbau per iFrame. Dies können Sie bewerkstelligen, indem Sie folgenden HTML-Code innerhalb Ihrer Webseite einbinden:</p>

        {assign var="base64Params" value="&thead={$spSettingsScheduleHeader}&thead1={$spSettingsScheduleHeader1|urlencode}&thead2={$spSettingsScheduleHeader2|urlencode}&thead3={$spSettingsScheduleHeader3|urlencode}&tfoot={$spSettingsScheduleFooter}&tfoot1={$spSettingsScheduleFooterLeft|urlencode}&tfoot2={$spSettingsScheduleFooterRight|urlencode}&robots={$spSettingsScheduleMetaRobots}&title={$spSettingsScheduleMetaTitle|urlencode}&clock={$spSettingsScheduleClock|urlencode}&rows={$spSettingsScheduleRows}"|base64_encode|replace:"==":""|replace:"=":""}

        <h3>iFrame</h3>
        <p>Den iFrame-Code platzieren Sie dort, wo Sie die Programmvorschau auf Ihrer Seite ausgeben möchten.</p>
        <pre class="language-html">
        <code class="language-html">
        &lt;iframe loading=&quot;lazy&quot; id=&quot;spExternalIframeSPCastProgramPreview&quot; frameborder=&quot;0&quot; width=&quot;256&quot; height=&quot;256&quot; src=&quot;https://{$spHostnameLoadbalancer}/scripts/schedule.php?values={$base64Params}&quot; title=&quot;SPCast.eu: {$spSettingsScheduleMetaTitle}&quot;&gt;&lt;/iframe&gt;
        </code>
        </pre>

        <p>Um das iFrame anzupassen, wählen Sie oben rechts die Einstellungen.</p>

        <ul>
            <li><strong>Breite des iFrames</strong> Sie können die Breite des iFrames anpassen, indem Sie beim Wert "width=256" die 256 durch einen anderen Wert ersetzen.</li>
            <li><strong>Höhe des iFrames</strong> Sie können die Höhe des iFrames anpassen, indem Sie beim Wert "height=256" die 256 durch einen anderen Wert ersetzen.</li>
        </ul>
    </div>
</div>

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