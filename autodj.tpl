<!--begin::Header-->
{include file="$template/includes/header/header-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/header/header-part2.tpl"}
{include file="$template/includes/subheader/partials/spsm/content_overview/autodj.tpl"}
{include file="$template/includes/header/header-part3.tpl"}
<!--end::Header-->

{if $spHasAccess == "1"}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/autodj.tpl"}

{else}

    {include file="modules/addons/SPStreamserverManagement/templates/partials/index_orderit.tpl"}

{/if}

<!--begin::Footer-->
{include file="$template/includes/footer/footer-part1.tpl"}
<!--begin::Page CSS / JS by this Template-->
{literal}
    <script>
        setTimeout(function() {
            document.getElementById('alert').style.display = 'none';
        }, 15000); // 15 Sekunden
    </script>

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
        function loadXMLOption0() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_success';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password.php";
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
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_1.php";
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
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_2.php";
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
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_3.php";
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
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_4.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption5() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_5.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption6() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_6.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption7() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_7.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption8() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_8.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption9() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_9.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>

    <script>
        function loadXMLOption10() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                    var currentUrl = location.href;
                    var newUrl = currentUrl.replace(/([\?&])success=[^&]*(&|$)/, '$1') + (currentUrl.indexOf('?') > -1 ? '&' : '?') + 'success=password_autodj_sucess';
                    newUrl = newUrl.replace(/([&])+/g, '&').replace(/#/g, '');
                    history.replaceState(null, "", newUrl);
                    location.reload();
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/autodj_reset_password_10.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>
{/literal}
<!--end::Page CSS / JS by this Template-->
{include file="$template/includes/footer/footer-part2.tpl"}
<!--end::Footer-->