<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                    data-content="Ein LoadBalancer ist ein Netzwerkgerät oder eine Software, die den Datenverkehr auf verschiedene Server oder Ressourcen verteilt, um die Last gleichmäßig zu verteilen und die Ausfallsicherheit zu erhöhen.<br/><br/>In Ihrem Fall geschieht dies bei jedem neuen Zuhörer. Jedes Mal, wenn der Radiosender eingeschaltet wird, wird der neue oder auch bekannte Zuhörer über unseren LoadBalancer verteilt und zu Ihrem Programm geleitet. Ohne den LoadBalancer wären wir auf ein einzelnes System angewiesen, was die Ausfallsicherheit beeinträchtigen würde.">
                </i> LoadBalancer Einstellungen<br />
                <small>Sie finden hier alle Einstellungen zum SPCast-LoadBalancer.</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <h3>LoadBalancer</h3>

            <p>Der LoadBalancer ist ein wichtiger Teil der SPCast-Umgebung. Bitte nehmen Sie sich Zeit und versuchen Sie, die Auswirkungen verschiedener Einstellungen zu verstehen.</p>

            <h4>Zuhörer Authentifizierung</h4>

            <p>
                Die "Zuhörer-Authentifizierung" ist ein Sicherheitsmechanismus in der SPCast-Umgebung, der dazu dient, die Berechtigung von Hörern zu überprüfen, bevor sie das Webradio-Programm
                aktivieren dürfen. Dies geschieht durch die Überprüfung des Headers "spcast-stream-auth" oder, aus Gründen der Abwärtskompatibilität für einige Geräte, auch durch den Header
                "icecast-stream-auth". Dieser Header enthält Informationen zur Authentifizierung des Zuhörers und wird verwendet, um sicherzustellen, dass nur autorisierte Benutzer auf das
                Webradio-Programm zugreifen können.
                <br /><br />
                Im Wesentlichen ermöglicht die Zuhörer-Authentifizierung, dass nur Personen, die die erforderlichen Berechtigungen haben, das
                Webradio-Programm einschalten können. Dies kann wichtig sein, um sicherzustellen, dass der Zugriff auf den Radiostream auf autorisierte Hörer beschränkt ist und die Inhalte vor
                unberechtigter Nutzung geschützt werden.
                <br /><br />
                <strong>Achtung:</strong> Derzeit haben Sie noch keine Einstellungen zur Benutzerauthentifizierung. Sie können diese Option also
                nach Bedarf ausschalten.
            </p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsLoadBalancerListenersAuth" value="1" {if $spSettingsLoadBalancerListenersAuth} checked{/if} class="no-icheck toggle-switch-success"
                        data-size="small" data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Zuhörer Authentifizierung aktivieren? (BITTE AKTIVIERT LASSEN. NOCH SCHEINT HIER EIN
                    FEHLER VORZULIEGEN!)
                </label>
            </div>

            <h4>Erfassung von Statistiken</h4>

            <p>Bei eingeschalteter Option erfasst die SPCast Umgebung Statistiken, wo es nur geht. Wenn Sie keine Statistiken erfassen möchten oder brauchen, dann können Sie diese hier abschalten.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsLoadBalancerAggregateStatistic" value="1" {if $spSettingsLoadBalancerAggregateStatistic} checked{/if} class="no-icheck toggle-switch-success"
                        data-size="small" data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Erfassung von Statistiken aktivieren?
                </label>
            </div>

        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_loadbalancer" value="Einstellungen speichern" />
            </div>
        </div>
    </form>

</div>