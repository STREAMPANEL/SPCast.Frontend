<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{include file="modules/addons/SPStreamserverManagement/templates/first_start/css/head.tpl"}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/first_start.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/first_start/partials/step_7.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->