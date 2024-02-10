<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                    data-content="{lang key='sp_spcast_icecastv2_settings_datacontent'}">
                </i> {lang key='sp_spcast_icecastv2_settings'}<br />
                <small>{lang key='sp_spcast_icecastv2_settings_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <div class="form-group">
                <label for="InputIcecastDirectory"><strong>{lang key='sp_spcast_icecastv2_settings_directories'}</strong></label>
                <small id="InputIcecastDirectory" class="form-text text-muted">{lang key='sp_spcast_icecastv2_settings_directories_desc'}</small><br />
                <textarea class="form-control" name="spSettingsIcecastDirectory" id="spSettingsIcecastDirectory" value="{$spSettingsIcecastDirectory}" placeholder="<directory>
<yp-url-timeout>15</yp-url-timeout>
<yp-url>http://dir.xiph.org/cgi-bin/yp-cgi</yp-url>
</directory>
                " style="height: 250px">{$spSettingsIcecastDirectory}</textarea>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_icecastv2" value="{lang key='sp_spcast_settings_save'}" />
            </div>

        </div>
    </form>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_icecastv2_settings_mask'}<br />
                <small>{lang key='sp_spcast_icecastv2_settings_mask_desc'}</small>
            </h3>
        </div>
    </div>
    <div class="card-body">

        <h4>{lang key='sp_spcast_icecastv2_settings_directories_default'}</h4>
        {lang key='sp_spcast_reference'}: <a href="https://dir.xiph.org/" target="_blank" rel="noopener">https://dir.xiph.org/</a>

        <pre class="language-html">
        <code class="language-html">
            &lt;directory&gt;
            &lt;yp-url-timeout&gt;15&lt;/yp-url-timeout&gt;
            &lt;yp-url&gt;http://dir.xiph.org/cgi-bin/yp-cgi&lt;/yp-url&gt;
            &lt;/directory&gt;
        </code>
        </pre>

        <h4>Streamstat</h4>
        {lang key='sp_spcast_reference'}: <a href="https://streamstat.net/ypreg.cgi" target="_blank" rel="noopener">https://streamstat.net/ypreg.cgi</a>

        <pre class="language-html">
        <code class="language-html">
            &lt;directory&gt;
            &lt;yp-url-timeout&gt;60&lt;/yp-url-timeout&gt;
            &lt;yp-url&gt;http://streamstat.net/yp.cgi&lt;/yp-url&gt;
            &lt;/directory&gt;
        </code>
        </pre>

        <h4>{lang key='sp_spcast_icecastv2_settings_directories_other'}</h4>
        {lang key='sp_spcast_icecastv2_settings_directories_other_desc'}
    </div>
</div>