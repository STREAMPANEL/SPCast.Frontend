<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Zuletzt gespielte Titel im Hauptserver<br />
                <small>Die aufgerufene Statistik zeigt alle gespielten Titel.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="https://{$spHostname}:9010/d/H7pywr74z/spcast-last-played-title-mainserver?orgId=1&refresh=1m&kiosk=tv" target="_blank" rel="nofollow"
                class="btn btn-icon btn-circle btn-sm btn-light-success mr-1">
                <i class="la la-external-link text-info"></i>
            </a>
        </div>
    </div>
    <div class="card-body">
        <iframe id="spExternalIframeStatisticLastPlayed" frameborder="0" src="https://{$spHostname}:9010/d/H7pywr74z/spcast-last-played-title-mainserver?orgId=1&refresh=1m&theme=light&kiosk=tv"
            title="Statistik: Zuletzt gespielte Titel"></iframe>
    </div>
</div>