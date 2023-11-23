<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<style type="text/css">
    audio {
        width: 100%;
        height: 45px;
    }
</style>
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/index_alternate.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/includes/modal/streamserver.tpl"}
    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_alternate.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{include file="modules/addons/SPStreamserverManagement/templates/includes/functions/change_all_server.tpl"}

{literal}
    <script>
        function loadXMLOption1() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_testserver.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption2() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_icecastkh.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption3() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_icecastv2.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption4() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_shoutcastv2.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>
{/literal}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->