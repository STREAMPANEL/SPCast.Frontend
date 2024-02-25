<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_firststart'}<br />
                <small>{lang key='sp_spcast_firststart_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=firststart_finished" role="form">
        <div class="card-body">

            <h3>{lang key='sp_spcast_loadbalancer'}</h3>

            <p>{lang key='sp_spcast_loadbalancer_settings_desc2'}</p>

            <h4>{lang key='sp_spcast_loadbalancer_settings_listener_authentification'}</h4>

            <p>
                {lang key='sp_spcast_loadbalancer_settings_listener_authentification_desc'}
                <br /><br />
                {lang key='sp_spcast_loadbalancer_settings_listener_authentification_desc2'}
                <br /><br />
                <strong>{lang key='sp_spcast_attention'}:</strong> {lang key='sp_spcast_loadbalancer_settings_listener_authentification_desc3'}
            </p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsLoadBalancerListenersAuth" value="1" {if $spSettingsLoadBalancerListenersAuth} checked{/if} class="no-icheck toggle-switch-success"
                        data-size="small" data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_loadbalancer_settings_listener_authentification_activate'}
                    (BITTE AKTIVIERT LASSEN. NOCH SCHEINT HIER EIN FEHLER VORZULIEGEN!)
                </label>
            </div>

            <h4>{lang key='sp_spcast_loadbalancer_settings_statistic'}</h4>

            <p>{lang key='sp_spcast_loadbalancer_settings_statistic_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsLoadBalancerAggregateStatistic" value="1" {if $spSettingsLoadBalancerAggregateStatistic} checked{/if} class="no-icheck toggle-switch-success"
                        data-size="small" data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_loadbalancer_settings_statistic_activate'}
                </label>
            </div>

        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_firststart_loadbalancer" value="{lang key='sp_spcast_firststart_finish'}" />
            </div>
        </div>
    </form>
</div>