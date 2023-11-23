<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Hauptserver (Erweitert)<br />
                <small>Die aufgerufene Statistik gibt detaillierte Informationen zum Hauptserver und Ihren Zuhörern aus, einschließlich aller bisher vorhandenen grafischen Statistiken.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=121"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "121"} btn-danger{else} btn-white{/if}">
                Live
            </a>
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=101"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "101"} btn-danger{else} btn-white{/if}">
                Standard
            </a>
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=116"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "116"} btn-danger{else} btn-white{/if}">
                Erweitert
            </a>
            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=109"
                class="btn btn-sm mr-2{if $filename eq "index" and $smarty.get.m eq "SPStreamserverManagement" and $smarty.get.spsmpageid eq "109"} btn-danger{else} btn-white{/if}">
                Detailiert
            </a>
            <a href="https://{$spHostname}:9010/d/f35f7f68-71a7-4d9d-ae09-625fb5b92e1f/mainserver-live?orgId=1&refresh=15s&kiosk=tv" target="_blank" rel="nofollow"
                class="btn btn-icon btn-circle btn-sm btn-light-success mr-1">
                <i class="la la-external-link text-info"></i>
            </a>
        </div>
    </div>
    <div class="card-body">
        <iframe id="spExternalIframeStatisticExtended" frameborder="0" src="https://{$spHostname}:9010/d/a82e8f78-5b76-4596-8496-f0835d5b42ae/mainserver-extended?orgId=1&refresh=1m&kiosk=tv&theme=light"
            title="Statistik: Hauptserver (Erweitert)"></iframe>
    </div>
</div>