<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_billing'}<br />
                <small>{lang key='sp_spcast_billing_desc'}</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a href="https://{$spHostname}:9010/d/wIFFe5EVz/spcast-cost-overview?orgId=1&refresh=15s&kiosk=tv" target="_blank" rel="nofollow"
                class="btn btn-icon btn-circle btn-sm btn-light-success mr-1">
                <i class="la la-external-link text-info"></i>
            </a>
        </div>
    </div>
    <div class="card-body">
        <iframe id="spExternalIframeBillingIndex" frameborder="0" src="https://{$spHostname}:9010/d/wIFFe5EVz/spcast-cost-overview?orgId=1&refresh=15s&theme=light&kiosk=tv"
            title="{lang key='sp_spcast_billing'}"></iframe>
    </div>
</div>