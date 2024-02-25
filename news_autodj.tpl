<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{if $spFirstStart == "0"}
    {include file="modules/addons/SPStreamserverManagement/templates/first_start/css/head.tpl"}
{/if}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/news_autodj.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spFirstStart == "0"}

    {include file="modules/addons/SPStreamserverManagement/templates/first_start/partials/step_1.tpl"}

{elseif $spFirstStart == "1" && $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/news_autodj.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{include file="modules/addons/SPStreamserverManagement/templates/includes/functions/change_all_server.tpl"}

{literal}<script>
    document.addEventListener('DOMContentLoaded', function(e) {
        FormValidation.formValidation(
            document.getElementById('SPValidationEntry'), {
                plugins: {
                    declarative: new FormValidation.plugins.Declarative({
                        html5Input: true,
                    }),
                    trigger: new FormValidation.plugins.Trigger(),
                    bootstrap: new FormValidation.plugins.Bootstrap(),
                    //submitButton: new FormValidation.plugins.SubmitButton(),
                    defaultSubmit: new FormValidation.plugins.DefaultSubmit(),
                    icon: new FormValidation.plugins.Icon({
                        valid: 'fa fa-check',
                        invalid: 'fa fa-times',
                        validating: 'fa fa-refresh',
                    }),
                },
            }
        );
    });
</script>{/literal}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->