<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<link href="https://sprassets.streampanel.cloud/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" type="text/css" />
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/access_management.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/includes/modal/moderator.tpl"}
    {include file="modules/addons/SPStreamserverManagement/templates/partials/access_management.tpl"}

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
                document.getElementById('SPCastModeratorEdit'), {
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

<script src="https://sprassets.streampanel.cloud/plugins/custom/datatables/datatables.bundle.js"></script>
<script type="text/javascript">
    (() => {
        "use strict";
        var __webpack_exports__ = {};

        var KTDatatablesExtensionButtons = function() {
            var initTable = function() {
                // begin first table
                var table = $('#SPDataTable').DataTable({
                    responsive: true,
                    buttons: [
                        'print',
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5',
                    ],
                    pagingType: "simple_numbers",
                    iDisplayLength: 15,
                    bLengthChange: false, // Disable own Display Length
                    dom: "lrtip", // Hides the Search Box
                    order: [
                        [0, 'asc']
                    ], // Sort Table
                });

                $('#SPCustomSearchBox').keyup(function() {
                    table.search($(this).val()).draw();
                })

                $('#export_print').on('click', function(e) {
                    e.preventDefault();
                    table.button(0).trigger();
                });

                $('#export_copy').on('click', function(e) {
                    e.preventDefault();
                    table.button(1).trigger();
                });

                $('#export_excel').on('click', function(e) {
                    e.preventDefault();
                    table.button(2).trigger();
                });

                $('#export_csv').on('click', function(e) {
                    e.preventDefault();
                    table.button(3).trigger();
                });

                $('#export_pdf').on('click', function(e) {
                    e.preventDefault();
                    table.button(4).trigger();
                });
            };

            return {
                //main function to initiate the module
                init: function() {
                    initTable();
                },
            };
        }();

        jQuery(document).ready(function() {
            KTDatatablesExtensionButtons.init();
        });
    })();
</script>

<script type="text/javascript">
    (() => {
        "use strict";
        var __webpack_exports__ = {};

        var KTDatatablesExtensionButtons = function() {
            var initTable = function() {
                // begin first table
                var table = $('#SPDataTable2').DataTable({
                    responsive: true,
                    buttons: [
                        'print',
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5',
                    ],
                    pagingType: "simple_numbers",
                    iDisplayLength: 15,
                    bLengthChange: false, // Disable own Display Length
                    dom: "lrtip", // Hides the Search Box
                    order: [
                        [0, 'asc']
                    ], // Sort Table
                });

                $('#SPCustomSearchBox2').keyup(function() {
                    table.search($(this).val()).draw();
                })

                $('#export_print').on('click', function(e) {
                    e.preventDefault();
                    table.button(0).trigger();
                });

                $('#export_copy').on('click', function(e) {
                    e.preventDefault();
                    table.button(1).trigger();
                });

                $('#export_excel').on('click', function(e) {
                    e.preventDefault();
                    table.button(2).trigger();
                });

                $('#export_csv').on('click', function(e) {
                    e.preventDefault();
                    table.button(3).trigger();
                });

                $('#export_pdf').on('click', function(e) {
                    e.preventDefault();
                    table.button(4).trigger();
                });
            };

            return {
                //main function to initiate the module
                init: function() {
                    initTable();
                },
            };
        }();

        jQuery(document).ready(function() {
            KTDatatablesExtensionButtons.init();
        });
    })();
</script>
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->