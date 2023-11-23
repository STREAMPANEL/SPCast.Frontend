<!doctype html>
<html>

<head>
    <meta charset="{$charset}">
    <meta name="robots" content="noarchive, noindex, follow, nosnippet">
    {if isset($smarty.server.HTTP_REFERER) && strpos($smarty.server.HTTP_REFERER, $smarty.server.HTTP_HOST) != false}
        <meta http-equiv="refresh" content="2; URL={$smarty.server.HTTP_REFERER}">
    {/if}
    <link href="https://spuassets.streampanel.cloud/global/plugins/bootstrap/4.3.1/css/bootstrap.min.css" media="all" rel="stylesheet" type="text/css">
    <title>{lang key="sp_settings_saved"}</title>
    <style type="text/css">
        html,
        body {
            height: 100%;
        }
    </style>
</head>

<body>
    <div class="h-100 d-flex justify-content-center">
        <div class="jumbotron my-auto"> {if isset($smarty.server.HTTP_REFERER) && strpos($smarty.server.HTTP_REFERER, $smarty.server.HTTP_HOST) != false}
                <div class="alert alert-success" role="alert">
                    <h4 class="alert-heading">{lang key="sp_settings_saved"}</h4>
                    <p>{lang key="sp_settings_saved_desc"}</p>
                    <hr>
                    <p class="mb-0">{lang key="sp_settings_saved_automatic_redirect"}</p>
                </div>
            {else}
                <div class="alert alert-success" role="alert">
                    <h4 class="alert-heading">{lang key="sp_settings_saved"}</h4>
                    <p>{lang key="sp_settings_saved_desc"}</p>
                    <hr>
                    <p class="mb-0">{lang key="sp_settings_saved_manual_redirect"}<br><br>
                        <a class="btn btn-block btn-primary" href="index.php?m=streampaneltimedcontent&pageid=1">{lang key="sp_go_back"}</a>
                    </p>
                </div>
            </div>
        {/if}
    </div>
</body>

</html>