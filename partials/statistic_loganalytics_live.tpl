<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Log Analytics / Live (ca. 1 Minute zeitversetzt)<br />
                <small>Das Log Analytics zeigt Ihnen die Statistiken des Hauptservers in direkter Aufbereitung durch die Logdateien. Es handelt sich hierbei um eine äußerst informative sowie
                    technische Ansicht.</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="https://{$spHostname}:9000/sp/goaccess/" target="_blank" rel="nofollow" class="btn btn-icon btn-circle btn-sm btn-light-success mr-1">
                <i class="la la-external-link text-info"></i>
            </a>
        </div>
    </div>
    <div class="card-body">
        <iframe id="spExternalIframeStatisticAudioCC" frameborder="0" src="https://{$spHostname}:9000/sp/goaccess/" title="Statistik: Alle Server"></iframe>
    </div>
</div>