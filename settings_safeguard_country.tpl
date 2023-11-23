<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<style type="text/css">
    .sp-select-option-green {
        background-color: #0CB7AE;
        color: #fff;
    }

    .sp-select-option-red {
        background-color: #f64e60;
        color: #fff;
    }
    .sp-right {
        position: absolute;
        top: 0;
        right: 0;
    }
</style>
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/settings_safeguard_country.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/settings_safeguard_country.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{include file="modules/addons/SPStreamserverManagement/templates/includes/functions/change_all_server.tpl"}

<script type="text/javascript">
    $(document).ready(function() {
        // Find the button element by its ID
        var toggleButton = $("#toggleAllFieldsBtn");

        // Function to be executed when the button is clicked
        toggleButton.on("click", function(event) {
            event.preventDefault(); // Prevent the default behavior of the button
            // Check if all select fields are set to "Activate"
            if ($("select option[value='1']:selected").length === $("select").length) {
                // If so, set all select fields to "Deactivate"
                $("select option[value='0']").prop("selected", true);
            } else {
                // Otherwise, set all select fields to "Activate"
                $("select option[value='1']").prop("selected", true);
            }
        });
    });
</script>
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->