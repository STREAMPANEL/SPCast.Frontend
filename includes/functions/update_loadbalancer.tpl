{literal}
    <script>
        function update_loadbalancer() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    console.log("Update LoadBalancer was Status 200.");
                    document.getElementById('loadbalancerOutput').innerHTML = '<div class="alert alert-success">Der LoadBalancer wurde erfolgreich geupdatet. Bitte laden Sie die Seite einmal neu.</div>';
                } else if (this.readyState == 4 && this.status != 200) {
                    console.log("Update LoadBalancer was failed.");
                    document.getElementById('loadbalancerOutput').innerHTML = '<div class="alert alert-danger">Der LoadBalancer konnte nicht geupdatet werden.</div>';
                }
            };
            var url = "modules/addons/SPStreamserverManagement/includes/update/loadbalancer/update.php";
            var param = "spserviceid={/literal}{$spServiceID}{literal}&spclientid={/literal}{$clientsdetails.userid}{literal}";
            xhttp.open("GET", url + "?" + param, true);
            xhttp.withCredentials = true;
            xhttp.send(null);
        }
    </script>
{/literal}