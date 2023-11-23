<div class="alert alert-primary" role="alert">
    <ul>
        <li>Wenn Sie Metadaten abrufen möchten schauen Sie im Bereich <a href="index.php?m=SPStreamserverManagement&spserviceid=7984&spsmpageid=305" class="sp-red">Programmdetails</a> um diese auf
            Ihrer Webseite ausgeben zu können.</li>
    </ul>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                HTML Player / Media Source Extension
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="row">
            <div class="col-md-4">

                    <audio src="https://{$spHostnameLoadbalancer}/stream" controls="controls" preload="none"></audio>

            </div>

            <div class="col-md-4">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum HTML-Code"
                        data-content="Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.">
                    </i> HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                    &lt;audio controls=&quot;controls&quot; preload=&quot;none&quot;&gt;&lt;/audio&gt;
                </code>
                </pre>
            </div>

            <div class="col-md-4">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum JavaScript-Code"
                        data-content="Den JavaScript-Code binden Sie im Optimalfall am Ende Ihrer Webseite vor dem schließenden &lt;/body&gt;-Tag ein. Alternativ kann dies auch an derselben Stelle wie beim CSS-Code geschehen.">
                    </i> Javascript</h3>
                <pre class="language-html">
                <code class="language-html">
                        &lt;script src=&quot;https://{$spHostnameLoadbalancer}/scripts/js/mse.php&quot;&gt;&lt;/script&gt;
                </code>
                </pre>
            </div>
        </div>
    </div>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                HTML Player / Alternativ
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="row">
            <div class="col-md-6">

                    <audio src="https://{$spHostnameLoadbalancer}/stream" controls="controls" preload="none" type="audio/mpeg"></audio>

            </div>

            <div class="col-md-6">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum HTML-Code"
                        data-content="Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.">
                    </i> HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                    &lt;audio src=&quot;https://{$spHostnameLoadbalancer}/stream&quot; controls=&quot;controls&quot; preload=&quot;none&quot;&gt;&lt;/audio&gt;
                </code>
                </pre>
            </div>
        </div>
    </div>
</div>