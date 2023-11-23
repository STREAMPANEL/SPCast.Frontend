<div id="xmlOutput"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis"
                    data-content="Der alternative Icecast V2 Server dient lediglich dazu, Ihr Programm innerhalb der verschiedenen Icecast-Plattformen zu bewerben und zu verbreiten. Die Listung auf solchen Plattformen erfordert leider einen originalen Icecast Server, den wir Ihnen unter der SPCast-Plattform zu diesem Zweck zur Verfügung stellen.">
                </i> Icecast V2 Einstellungen<br />
                <small>Sie finden hier alle Einstellungen zur SPCast-Umgebung.</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <div class="form-group">
                <label for="InputIcecastDirectory"><strong>Icecast Verzeichnisse</strong></label>
                <small id="InputIcecastDirectory" class="form-text text-muted">Sie können hier beliebig viele Verzeichnisse eintragen. Achten Sie unbedingt darauf, keine Fehler zu machen. Selbst ein
                    kleiner Fehler wie eine vergessene Klammer kann dazu führen, dass Ihr Streamserver nach einem Neustart nicht mehr startet.</small><br />
                <textarea class="form-control" name="spSettingsIcecastDirectory" id="spSettingsIcecastDirectory" value="{$spSettingsIcecastDirectory}" placeholder="<directory>
<yp-url-timeout>15</yp-url-timeout>
<yp-url>http://dir.xiph.org/cgi-bin/yp-cgi</yp-url>
</directory>
                " style="height: 250px">{$spSettingsIcecastDirectory}</textarea>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_icecastv2" value="Einstellungen speichern" />
            </div>

        </div>
    </form>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Beispiele zur Maske<br />
                <small>Beispiele für die Listung in Icecast-Verzeichnissen, die Sie in der oberen Einstellungsmaske angeben können.</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <h4>Standard Icecast-Verzeichnis</h4>
        Verweis: <a href="https://dir.xiph.org/" target="_blank" rel="noopener">https://dir.xiph.org/</a>

        <pre class="language-html">
        <code class="language-html">
            &lt;directory&gt;
            &lt;yp-url-timeout&gt;15&lt;/yp-url-timeout&gt;
            &lt;yp-url&gt;http://dir.xiph.org/cgi-bin/yp-cgi&lt;/yp-url&gt;
            &lt;/directory&gt;
        </code>
        </pre>

        <h4>Streamstat</h4>
        Verweis: <a href="https://streamstat.net/ypreg.cgi" target="_blank" rel="noopener">https://streamstat.net/ypreg.cgi</a>

        <pre class="language-html">
        <code class="language-html">
            &lt;directory&gt;
            &lt;yp-url-timeout&gt;60&lt;/yp-url-timeout&gt;
            &lt;yp-url&gt;http://streamstat.net/yp.cgi&lt;/yp-url&gt;
            &lt;/directory&gt;
        </code>
        </pre>

        <h4>Weitere Verzeichnisse</h4>
        Sie können beliebig viele Verzeichnisse angeben. Nutzen Sie Suchmaschinen, um weitere solcher Dienste zu finden. Wenn Sie uns neue Dienste über ein Supportticket zukommen lassen, werden wir
        sie hier auch für andere Nutzer auflisten.

    </div>
</div>