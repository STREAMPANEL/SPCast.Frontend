<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{if $spFirstStart == "0"}
    {include file="modules/addons/SPStreamserverManagement/templates/first_start/css/head.tpl"}
{/if}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/settings_safeguard_ipaddress_deny.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spFirstStart == "0"}

    {include file="modules/addons/SPStreamserverManagement/templates/first_start/partials/step_1.tpl"}

{elseif $spFirstStart == "1" && $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/settings_safeguard_ipaddress_deny.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{include file="modules/addons/SPStreamserverManagement/templates/includes/functions/change_all_server.tpl"}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->