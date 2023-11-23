<div id="xmlOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis" data-content="Der alternative Shoutcast V2 Server dient lediglich dazu, Ihr Programm innerhalb der Shoutcast.com-Plattform zu bewerben und zu verbreiten. Die Listung auf dieser Plattform erfordert leider einen originalen Shoutcast V2 Server, den Wir Ihnen unter der SPCast Plattform zur Verfügung stellen.">
                </i> Shoutcast V2 Einstellungen<br />
                <small>Sie finden hier alle Einstellungen für den Shoutcast V2 Server.</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <div class="form-group">
                <label for="InputShoutcastAuthkey"><strong>Shoutcast Verzeichnis</strong></label>
                <input type="text" class="form-control" id="spSettingsShoutcastV2Authkey" aria-describedby="InputShoutcastAuthkey" placeholder="Kopieren Sie hier den Shoutcast Authhash hinein."
                    name="spSettingsShoutcastV2Authkey" value="{$spSettingsShoutcastV2Authkey}" />
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_shoutcastv2" value="Einstellungen speichern" />
            </div>

        </div>
    </form>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Authash Anleitung<br />
                <small>Sie finden hier eine Anleitung zur Einrichtung des Shoutcast V2 Authhashs.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">
        <h4>Anleitung</h4>
        <ul>
            <li>Registieren Sie sich auf <a href="https://radiomanager.shoutcast.com/register/serverSoftwareFreemium" target="_blank"
                    rel="noopener">https://radiomanager.shoutcast.com/register/serverSoftwareFreemium</a></li>
            <li>Wenn Sie bereits ein Konto bei Shoutcast direkt besitzen, loggen Sie sich hier ein: <a href="https://radiomanager.shoutcast.com/" target="_blank"
                    rel="noopener">https://radiomanager.shoutcast.com/</a></li>
            <li>Wenn Sie eingeloggt sind, klicken Sie in der linken Navigation auf "Settings" und dann im folgenden Fenster auf den Tab "AVANCED". Dort angekommen finden Sie den Authhash welchen Sie
                in der oberen Maske einfügen müssen.</li>
        </ul>
    </div>
</div>