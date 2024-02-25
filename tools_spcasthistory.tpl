<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/tools_spcasthistory.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spFirstStart == "0"}

    {include file="modules/addons/SPStreamserverManagement/templates/first_start/partials/step_1.tpl"}

{elseif $spFirstStart == "1" && $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/tools_spcasthistory.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<script>
    // Define the domain variable here
    var domain = "{$spHostname}";
</script>

{if $spCNAMELoadBalancer}
    <script src="https://{$spCNAMELoadBalancer}/scripts/js/history/history.min.js"></script>
{else}
    <script src="https://{$spHostnameLoadbalancer}/scripts/js/history/history.min.js"></script>
{/if}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->