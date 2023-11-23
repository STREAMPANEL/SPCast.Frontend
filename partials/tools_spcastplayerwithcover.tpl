<div class="alert alert-primary" role="alert">
    <ul>
        <li>Wenn Sie Metadaten extra abrufen möchten schauen Sie im Bereich <a href="index.php?m=SPStreamserverManagement&spserviceid=7984&spsmpageid=305" class="sp-red">Programmdetails</a> um diese
            auf Ihrer Webseite ausgeben zu können.</li>
    </ul>
</div>

<!-- Player with Metdata-->
<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                HTML Player mit Metadaten
            </h3>
        </div>
    </div>
    <div class="card-body">

        <div class="row">

            <div class="col-md-3">

                <style>
                    .player-container {
                        position: relative;
                        width: 100%;
                        max-width: 600px;
                        margin: 0 auto;
                    }

                    .player-container .background-image {
                        width: 100%;
                        height: auto;
                        filter: brightness(0.5);
                        /* Adjust this value to control the brightness of the image */
                    }

                    .player-container .play-button {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate(-50%, -50%);
                        font-size: 4rem;
                        color: white;
                        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
                        cursor: pointer;
                    }

                    .player-container .cover-title {
                        position: absolute;
                        top: 35px;
                        left: 50%;
                        transform: translateX(-50%);
                        text-align: center;
                        color: white;
                        font-size: 1.5rem;
                        width: 90%;
                    }

                    .player-container .radioname {
                        position: absolute;
                        top: 10px;
                        left: 50%;
                        transform: translateX(-50%);
                        text-align: center;
                        color: white;
                        font-size: 1.5rem;
                        width: 90%;
                    }
                </style>

                <div class="player-container">
                    <img class="background-image" alt="" id="spCoverImage" />
                    <h3 class="radioname">{$spSettingsRadioName}</h3>
                    <h4 class="cover-title" id="spTitleOutput"></h4>
                    <div class="play-button">
                        <svg class="play-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="72px" height="72px">
                            <path d="M8 5v14l11-7z" />
                        </svg>
                        <svg class="stop-icon d-none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="72px" height="72px">
                            <path d="M6 6h12v12H6z" />
                        </svg>
                    </div>
                </div>

            </div>

            <div class="col-md-3">
                <h3><i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="Hinweis zum HTML-Code"
                        data-content="Den HTML-Code können Sie an einen beliebigen Punkt innerhalb Ihrer Webseite einbinden.">
                    </i> HTML</h3>
                <pre class="language-html">
                <code class="language-html">
                    &lt;div class="player-container"&gt;
                    &lt;img class="background-image" alt="" id="spCoverImage" /&gt;
                    &lt;h3 class="radioname"&gt;{$spSettingsRadioName}&lt;/h3&gt;
                    &lt;h4 class="cover-title" id="spTitleOutput"&gt;&lt;/h4&gt;
                    &lt;div class="play-button"&gt;
                    &lt;svg class="play-icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="72px" height="72px"&gt;
                    &lt;path d="M8 5v14l11-7z" /&gt;
                    &lt;/svg&gt;
                    &lt;svg class="stop-icon d-none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="72px" height="72px"&gt;
                    &lt;path d="M6 6h12v12H6z" /&gt;
                    &lt;/svg&gt;
                    &lt;/div&gt;
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
                .player-container {
                    position: relative;
                    width: 100%;
                    max-width: 600px;
                    margin: 0 auto;
                }

                .player-container .background-image {
                    width: 100%;
                    height: auto;
                    filter: brightness(0.5); /* Adjust this value to control the brightness of the image */
                }

                .player-container .play-button {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                    font-size: 4rem;
                    color: white;
                    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
                    cursor: pointer;
                }

                .player-container .cover-title {
                    position: absolute;
                    top: 35px;
                    left: 50%;
                    transform: translateX(-50%);
                    text-align: center;
                    color: white;
                    font-size: 1.5rem;
                    width: 90%;
                }

                .player-container .radioname {
                    position: absolute;
                    top: 10px;
                    left: 50%;
                    transform: translateX(-50%);
                    text-align: center;
                    color: white;
                    font-size: 1.5rem;
                    width: 90%;
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
                    var coverSize = "large";
                    &lt;/script&gt;
                    &lt;script src=&quot;https://{$spHostnameLoadbalancer}/scripts/js/mse_with_cover.php&quot;&gt;&lt;/script&gt;
                </code>
                </pre>
            </div>

        </div>
</div>