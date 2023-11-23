<div class="alert alert-primary" role="alert">
    <ul>
        <li>Wenn Sie Metadaten extra abrufen möchten schauen Sie im Bereich <a href="index.php?m=SPStreamserverManagement&spserviceid=7984&spsmpageid=305" class="sp-red">Programmdetails</a> um diese
            auf Ihrer Webseite ausgeben zu können.</li>
    </ul>
</div>

<!-- Cover-->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Coverabruf
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="row">

            <div class="col-md-3">

                <div class="cover-container">
                    <img class="background-image" alt="" id="spCoverImageOnly1" />
                </div>

            </div>

            <div class="col-md-3">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum HTML-Code"
                        data-content="Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.">
                    </i> HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                    &lt;div class="cover-container"&gt;
                    &lt;img class="background-image" alt="" id="spCoverImageOnly1" /&gt;
                    &lt;/div&gt;
                </code>
                </pre>
            </div>

            <div class="col-md-3">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum CSS-Code"
                        data-content="Den CSS-Code binden Sie im Optimalfall zwischen dem beginnenden <head>-Tag und dem schließenden </head>-Tag Ihrer Webseite ein.">
                    </i> CSS</h3>
                <pre class="language-html">
                <code class="language-html">
                &lt;style&gt;
                .cover-container {
                    position: relative;
                    width: 100%;
                    max-width: 600px;
                    margin: 0 auto;
                }

                .cover-container .background-image {
                    width: 100%;
                    height: auto;
                    /* Adjust this value to control the brightness of the image */
                    filter: brightness(0.5);
                }
                &lt;/style&gt;
                </code>
                </pre>
            </div>

            <div class="col-md-3">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum JavaScript-Code"
                        data-content="Den JavaScript-Code binden Sie im Optimalfall am Ende Ihrer Webseite vor dem schließenden &lt;/body&gt;-Tag ein. Alternativ kann dies auch an derselben Stelle wie beim CSS-Code geschehen.">
                    </i> Javascript</h3>
                <pre class="language-html">
                <code class="language-html">
                    &lt;script&gt;
                    // Stations default Cover Image
                    var defaultCover = "{$spSettingsRadioNoCoverURL}";
                    // You can use the following values: small, medium, large
                    var coverOnlySize = "medium";
                    // Set the number of covers you want to allow on one site
                    var numberOfCovers = 1;
                    &lt;/script&gt;
                    &lt;script src=&quot;https://{$spHostnameLoadbalancer}/scripts/js/cover.php&quot;&gt;&lt;/script&gt;
                </code>
                </pre>
            </div>

        </div>
    </div>
</div>