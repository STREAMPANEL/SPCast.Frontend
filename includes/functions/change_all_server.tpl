{literal}
    <script>
        function change_all_server() {
            var xhttp2 = new XMLHttpRequest();
            xhttp2.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    console.log("Change all Servers was Status 200.");
                    change_all_server_second();
                } else if (this.readyState == 4 && this.status != 200) {
                    console.log("Change all Servers was failed.");
                }
            };
            var url = "modules/addons/SPStreamserverManagement/includes/credentials/streamserver/regenerate/regenerate.php";
            var param = "spserviceid={/literal}{$spServiceID}{literal}&spclientid={/literal}{$clientsdetails.userid}{literal}";
            xhttp2.open("GET", url + "?" + param, true);
            xhttp2.withCredentials = true;
            xhttp2.send(null);
        }

        function change_all_server_second() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    console.log("Restart all Servers was Status 200.");
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                } else if (this.readyState == 4 && this.status != 200) {
                    document.getElementById("xmlOutput").innerHTML = this.responseText;
                    document.getElementById("xmlOutput").style.display = "block";
                    console.log("Restart all Servers was failed.");
                    setTimeout(function() {
                        document.getElementById("xmlOutput").style.display = "none";
                    }, 15000); // 15 seconds
                }
            };
            username = "{/literal}{$spSecurityUsername}{literal}";
            password = "{/literal}{$spSecurityPassword}{literal}";
            url = "https://{/literal}{$spHostname}{literal}:9000/sp/secure/change_all_streamserver.php";
            xhttp.open("GET", "{/literal}{$systemsslurl}{literal}modules/addons/SPStreamserverManagement/action.php?url=" + encodeURIComponent(url) + "&username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password), true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>
{/literal}