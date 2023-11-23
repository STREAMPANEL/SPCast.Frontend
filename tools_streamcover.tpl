<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<style>
    .cover-container {
        position: relative;
        width: 100%;
        max-width: 600px;
        margin: 0 auto;
    }

    .cover-container .background-image {
        width: 100%;
        height: auto;
        /* Adjust this value to control the brightness of the image */
        filter: brightness(0.5);
    }
</style>
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/tools_streamcover.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/tools_streamcover.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<script>
    // Stations default Cover Image
    var defaultCover = "{$spSettingsRadioNoCoverURL}";
    // You can use the following values: small, medium, large
    var coverOnlySize = "large";
    // Set the number of covers you want to allow on one site
    var numberOfCovers = 1;
</script>

{if $spCNAMELoadBalancer}
    <script src="https://{$spCNAMELoadBalancer}/scripts/js/cover.php"></script>
{else}
    <script src="https://{$spHostnameLoadbalancer}/scripts/js/cover.php"></script>
{/if}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->