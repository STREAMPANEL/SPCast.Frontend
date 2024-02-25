<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<style type="text/css">
    audio {
        width: 100%;
        height: 45px;
    }
</style>

{if $spFirstStart == "0"}
    {include file="modules/addons/SPStreamserverManagement/templates/first_start/css/head.tpl"}
{/if}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/index_overview.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spFirstStart == "0"}

    {include file="modules/addons/SPStreamserverManagement/templates/first_start/partials/step_1.tpl"}

{elseif $spFirstStart == "1" && $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/includes/modal/streamserver.tpl"}
    {include file="modules/addons/SPStreamserverManagement/templates/partials/index.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{include file="modules/addons/SPStreamserverManagement/templates/includes/functions/change_all_server.tpl"}

{literal}
    <script>
        function loadXMLOptionStartAutoDJ() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=autodj_started';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_start.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOptionStopAutoDJ() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=autodj_stopped';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_stop.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

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
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_mainserver.php";
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
            var username = "{/literal}{$spSecurityUsername}{literal}";
            var password = "{/literal}{$spSecurityPassword}{literal}";
            var url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_transcoder.php";
            var requestUrl = "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password);
            xhttp.open("GET", requestUrl, true);
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
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/restart_all_streamserver.php";
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
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/reboot_system.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function change_mainserver() {
            var xhttp2 = new XMLHttpRequest();
            xhttp2.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    console.log("Change DJ Credentials was Status 200.");
                    change_mainserver_second();
                } else if (this.readyState == 4 && this.status != 200) {
                    console.log("Change DJ Credentials was failed.");
                }
            };
            var url = "modules/addons/SPStreamserverManagement/includes/credentials/streamserver/regenerate/regenerate.php";
            var param = "spserviceid={/literal}{$spServiceID}{literal}&spclientid={/literal}{$clientsdetails.userid}{literal}";
            xhttp2.open("GET", url + "?" + param, true);
            xhttp2.withCredentials = true;
            xhttp2.send(null);
        }

        function change_mainserver_second() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    console.log("Restart Mainserver was Status 200.");
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                } else if (this.readyState == 4 && this.status != 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    console.log("Restart Mainserver was failed.");
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/change_mainserver.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>
{/literal}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->