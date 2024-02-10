{if $spFirstStart == "0"}
    <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=900">
        <div class="alert alert-danger" role="alert">
            {lang key='sp_spcast_dashboard_firststart_setting'}
        </div>
    </a>
{/if}

{if $spIsAudioCCUser == "1"}
    <div class="alert alert-danger" role="alert">
        <strong>{lang key='sp_spcast_dashboard_audiocc_detected'}:</strong> {lang key='sp_spcast_dashboard_audiocc_detected_desc'}
    </div>
{/if}

{if $smarty.get.firststart == "finish"}
    <div class="alert alert-danger" role="alert">
        <!-- TODO: Translate again -->
        {lang key='sp_spcast_firststart_finish_desc'}
    </div>
{/if}

<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

{if $spUserVersion != $spActualVersion && !empty($spSettingsRadioName)}
    <div class="alert alert-danger" role="alert">
        <strong>{lang key='sp_spcast_dashboard_newversion'}:</strong> {lang key='sp_spcast_dashboard_newversion_desc'}: <a href="https://www.streampanel.net/changelog/spcast/" target="_blank"
            rel="noopener">https://www.streampanel.net/changelog/spcast/</a>
    </div>
{/if}

<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="{lang key='sp_spcast_server_is_online'}" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="{lang key='sp_spcast_server_is_offline'}" />
                        </span>
                    {/if}
                    <h3 class="card-label text-white">
                        {if $spAudioCCModus == "0"}
                            {lang key='sp_spcast_dashboard_server_spcast'}
                        {else}
                            {lang key='sp_spcast_dashboard_server_audiocc'}
                        {/if}
                    </h3>
                </div>
                <div class="card-toolbar">
                    <div class="btn-group">
                        <button class="btn btn-primary font-weight-bold btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="flaticon2-cube"></i> {lang key='sp_spcast_options'}
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#" onclick="loadXMLOption1()">{lang key='sp_spcast_streamserver_restart'}</a>
                            <a class="dropdown-item" href="#" onclick="loadXMLOption2()">{lang key='sp_spcast_transcoder_restart'}</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" onclick="loadXMLOptionStartAutoDJ()">{lang key='sp_spcast_autodj_start'}</a>
                            <a class="dropdown-item" href="#" onclick="loadXMLOptionStopAutoDJ()">{lang key='sp_spcast_autodj_stop'}</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" onclick="loadXMLOption3()">{lang key='sp_spcast_streamserver_all_restart'}</a>
                            <a class="dropdown-item" href="#" onclick="loadXMLOption4()">{lang key='sp_spcast_instance_reboot'}</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" onclick="change_mainserver()">{lang key='sp_spcast_update_mainserver_only'}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                        <strong>{lang key='sp_spcast_port'}:</strong> 80 (HTTP) / 443 (HTTPS)<br />
                        <!--<strong>Slots:</strong> 100<br />-->
                        <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s
                    </div>
                    <div class="col-sm-6">
                        {if $spCNAMELoadBalancer}
                            <strong>{lang key='sp_spcast_loadbalancer_address'}:</strong> https://{$spCNAMELoadBalancer}/stream<br />
                        {else}
                            <strong>{lang key='sp_spcast_loadbalancer_address'}:</strong> https://{$spHostnameLoadbalancer}/stream<br />
                        {/if}
                        {if $spAudioCCModus == "0"}
                            {if $spCNAMELoadBalancer}
                                <strong>{lang key='sp_spcast_html5_player'}:</strong> https://{$spCNAMELoadBalancer}/<br />
                            {else}
                                <strong>{lang key='sp_spcast_html5_player'}:</strong> https://{$spHostnameLoadbalancer}/<br />
                            {/if}
                        {/if}
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-sm-12">
                    {if $spCNAMELoadBalancer}
                        <div class="col-sm-6">
                            <a href="http://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_http'}</a>
                        </div>
                        <div class="col-sm-6">
                            <a href="https://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_https'}</a>
                        </div>
                    {else}
                        <div class="col-sm-6">
                            <a href="http://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_http'}</a>
                        </div>
                        <div class="col-sm-6">
                            <a href="https://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_https'}</a>
                        </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_dashboard_mainserver_credentials_datatitle'}"
                            data-content="{lang key='sp_spcast_dashboard_mainserver_credentials_datacontent'}">
                        </i>
                        {lang key='sp_spcast_dashboard_mainserver_credentials'}<br />
                        <small>{lang key='sp_spcast_dashboard_mainserver_credentials_desc'}</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast1changedata">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_change_credentials'}
                    </a>
                    <div class="btn-group">
                        <button class="btn btn-primary font-weight-bold btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="flaticon2-cube"></i> {lang key='sp_spcast_broadcaster_help'}
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="https://www.spcast.eu/faq/broadcaster/wie-richte-ich-einen-encoder-in-mairlist-fuer-mein-webradio-ein/" target="_blank"
                                rel="noopener">{lang key='sp_spcast_broadcaster_help_mairlist'}</a>
                            <a class="dropdown-item" href="https://www.spcast.eu/faq/broadcaster/so-richten-sie-einen-encoder-in-radioboss-fuer-ihr-webradio-ein/" target="_blank"
                                rel="noopener">{lang key='sp_spcast_broadcaster_help_radioboss'}</a>
                            <a class="dropdown-item" href="https://www.spcast.eu/faq/broadcaster/wie-richte-ich-einen-encoder-in-sam-broadcaster-ein/" target="_blank"
                                rel="noopener">{lang key='sp_spcast_broadcaster_help_sam'}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Icecast V2{if $spAudioCCModus == "0"} / Shoutcast V2 {lang key='sp_spcast_broadcaster'}{/if}</h4>
                        <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                        <strong>{lang key='sp_spcast_port'}:</strong> 80 {lang key='sp_spcast_or'} {if $spAudioCCModus == "0"}8150{else}8140{/if}<br />
                        <strong>{lang key='sp_spcast_mountpoint'}:</strong> /stream_live<br />
                        <strong>{lang key='sp_spcast_username'}:</strong> {$spServerID1Username}<br />
                        <strong>{lang key='sp_spcast_password'}:</strong> {if $spServerID1Password eq 'spMustChangeFirst'}<font color="red">{lang key='sp_spcast_change_password_first'}</font>
                        {else}{$spServerID1Password}
                        {/if}
                    </div>
                    <div class="col-sm-6">
                        <h4>{lang key='sp_spcast_alternate_credentials'}</h4>
                        {if $spAudioCCModus == "0"}
                            {lang key='sp_spcast_alternate_credentials_1'}
                        {else}
                            {lang key='sp_spcast_alternate_credentials_2'}
                        {/if}<br /><br />
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=3"
                                    class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_access_management'}</a>
                            </div>
                            <div class="col-sm-6">
                                <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=201" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_autodj'}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom" id="sp_card">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                            data-content="{lang key='sp_spcast_public_channel_datacontent'}">
                        </i>
                        {lang key='sp_spcast_public_channel'}
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <h4>{lang key='sp_spcast_external_links'}</h4>
                {lang key='sp_spcast_external_links_desc'}<br /><br />
                <div class="row">
                    <div class="col-sm-6 sp-margin-bottom">
                        <h6>320 Kbits / MP3</h6>
                        {if $spCNAMELoadBalancer}
                            <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream</a><br />
                            <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream</a><br />
                        {else}
                            <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream</a><br />
                            <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream</a><br />
                        {/if}
                        {if $spAudioCCModus == "0"}
                            {if $spCNAMELoadBalancer}
                                <strong>HLS ({lang key='sp_spcast_autodj'}):</strong> <a href="https://{$spCNAMELoadBalancer}/autodj.hls" target="_blank"
                                    rel="noopener">https://{$spCNAMELoadBalancer}/autodj.hls</a><br />
                                <strong>HLS ({lang key='sp_spcast_livebroadcast'}):</strong> <a href="https://{$spCNAMELoadBalancer}/live.hls" target="_blank"
                                    rel="noopener">https://{$spCNAMELoadBalancer}/live.hls</a><br />
                                <strong>HLS ({lang key='sp_spcast_automatic_detection'}):</strong> <a href="https://{$spCNAMELoadBalancer}/stream.hls" target="_blank"
                                    rel="noopener">https://{$spCNAMELoadBalancer}/stream.hls</a>
                            {else}
                                <strong>HLS ({lang key='sp_spcast_autodj'}):</strong> <a href="https://{$spHostnameLoadbalancer}/autodj.hls" target="_blank"
                                    rel="noopener">https://{$spHostnameLoadbalancer}/autodj.hls</a><br />
                                <strong>HLS ({lang key='sp_spcast_livebroadcast'}):</strong> <a href="https://{$spHostnameLoadbalancer}/live.hls" target="_blank"
                                    rel="noopener">https://{$spHostnameLoadbalancer}/live.hls</a><br />
                                <strong>HLS ({lang key='sp_spcast_automatic_detection'}):</strong> <a href="https://{$spHostnameLoadbalancer}/stream.hls" target="_blank"
                                    rel="noopener">https://{$spHostnameLoadbalancer}/stream.hls</a>
                            {/if}
                        {/if}
                    </div>
                    {if $spSettingsTranscoder256 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>256 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream256" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream256</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream256" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream256</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream256" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream256</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream256" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream256</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder192 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>192 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream192" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream192</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream192" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream192</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream192" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream192</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream192" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream192</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder128 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>128 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream128" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream128</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream128" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream128</a><br />
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream128" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream128</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream128" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream128</a><br />
                            {/if}
                            {if $spAudioCCModus == "0"}
                                {if $spCNAMELoadBalancer}
                                    <strong>HLS:</strong> <a href="https://{$spCNAMELoadBalancer}/stream128.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream128.hls</a>
                                {else}
                                    <strong>HLS:</strong> <a href="https://{$spHostnameLoadbalancer}/stream128.hls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream128.hls</a>
                                {/if}
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder96 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>96 Kbits / MP3</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream96" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream96</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream96" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream96</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream96" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream96</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream96" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream96</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder64 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>64 Kbits / AAC</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream64" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream64</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream64" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream64</a><br />
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream64" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream64</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream64" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream64</a><br />
                            {/if}
                            {if $spAudioCCModus == "0"}
                                {if $spCNAMELoadBalancer}
                                    <strong>HLS:</strong> <a href="https://{$spCNAMELoadBalancer}/stream64.hls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream64.hls</a>
                                {else}
                                    <strong>HLS:</strong> <a href="https://{$spHostnameLoadbalancer}/stream64.hls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream64.hls</a>
                                {/if}
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder48 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>48 Kbits / AAC</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream48" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream48</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream48" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream48</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream48" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream48</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream48" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream48</a>
                            {/if}
                        </div>
                    {/if}
                    {if $spSettingsTranscoder32 == 1}
                        <div class="col-sm-6 sp-margin-bottom">
                            <h6>32 Kbits / AAC</h6>
                            {if $spCNAMELoadBalancer}
                                <strong>HTTP:</strong> <a href="http://{$spCNAMELoadBalancer}/stream32" target="_blank" rel="noopener">http://{$spCNAMELoadBalancer}/stream32</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spCNAMELoadBalancer}/stream32" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream32</a>
                            {else}
                                <strong>HTTP:</strong> <a href="http://{$spHostnameLoadbalancer}/stream32" target="_blank" rel="noopener">http://{$spHostnameLoadbalancer}/stream32</a><br />
                                <strong>HTTPs:</strong> <a href="https://{$spHostnameLoadbalancer}/stream32" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/stream32</a>
                            {/if}
                        </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom" id="sp_card">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                            data-content="{lang key='sp_spcast_channel_other_datacontent'}">
                        </i>
                        {lang key='sp_spcast_channel_other'}
                    </h3>
                </div>
            </div>
            <div class="card-body">
                {lang key='sp_spcast_channel_other_note'}<br /><br />
                {if $spAudioCCModus == "0"}
                    {if $spCNAMELoadBalancer}
                        <strong>{lang key='sp_spcast_html5_player'}:</strong> <a href="https://{$spCNAMELoadBalancer}/" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/</a><br /><br />
                    {else}
                        <strong>{lang key='sp_spcast_html5_player'}:</strong> <a href="https://{$spHostnameLoadbalancer}/" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/</a><br /><br />
                    {/if}
                {/if}
                {if $spCNAMELoadBalancer}
                    <strong>Winamp / iTunes:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.pls" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.pls</a><br />
                    <strong>Windows Media {lang key='sp_spcast_player'}:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.asx" target="_blank"
                        rel="noopener">https://{$spCNAMELoadBalancer}/listen.asx</a><br />
                    <strong>Real {lang key='sp_spcast_player'}:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.ram" target="_blank"
                        rel="noopener">https://{$spCNAMELoadBalancer}/listen.ram</a><br />
                    <strong>QuickTime:</strong> <a href="https://{$spCNAMELoadBalancer}/listen.qtl" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.qtl</a><br />
                    <strong>XSPF:</a></strong> <a href="https://{$spCNAMELoadBalancer}/listen.xspf" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/listen.xspf</a><br /><br />
                    <h6>{lang key='sp_spcast_external_plattforms'}</h6>
                    {lang key='sp_spcast_external_plattforms_1'}<br />
                    {lang key='sp_spcast_external_plattforms_2'}<br /><br />
                    <strong>{lang key='sp_spcast_player'}:</strong> <a href="https://{$spCNAMELoadBalancer}/stream" target="_blank" rel="noopener">https://{$spCNAMELoadBalancer}/stream</a><br /><br />
                {else}
                    <strong>Winamp / iTunes:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.pls" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.pls</a><br />
                    <strong>Windows Media {lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.asx" target="_blank"
                        rel="noopener">https://{$spHostnameLoadbalancer}/listen.asx</a><br />
                    <strong>Real {lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.ram" target="_blank"
                        rel="noopener">https://{$spHostnameLoadbalancer}/listen.ram</a><br />
                    <strong>QuickTime:</strong> <a href="https://{$spHostnameLoadbalancer}/listen.qtl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.qtl</a><br />
                    <strong>XSPF:</a></strong> <a href="https://{$spHostnameLoadbalancer}/listen.xspf" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/listen.xspf</a><br /><br />
                    <h6>{lang key='sp_spcast_external_plattforms'}</h6>
                    {lang key='sp_spcast_external_plattforms_1'}<br />
                    {lang key='sp_spcast_external_plattforms_2'}<br /><br />
                    <strong>{lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostnameLoadbalancer}/stream" target="_blank"
                        rel="noopener">https://{$spHostnameLoadbalancer}/stream</a><br /><br />
                {/if}
                {if $spAudioCCModus == "0"}
                    <h6>{lang key='sp_spcast_other_hls'}</h6>
                    {lang key='sp_spcast_other_hls_desc'}<br /><br />
                    {lang key='sp_spcast_other_hls_desc_2'}: <a href="https://www.spcast.eu/faq/allgemein/hls-http-live-streaming/" target="_blank"
                        rel="noopener">https://www.spcast.eu/faq/allgemein/hls-http-live-streaming/</a><br /><br />
                    {if $spCNAMELoadBalancer}
                        <strong>HLS ({lang key='sp_spcast_automatic_detection'}):</strong> <a href="https://{$spCNAMELoadBalancer}/stream.hls" target="_blank"
                            rel="noopener">https://{$spCNAMELoadBalancer}/stream.hls</a><br /><br />
                    {else}
                        <strong>HLS ({lang key='sp_spcast_automatic_detection'}):</strong> <a href="https://{$spHostnameLoadbalancer}/stream.hls" target="_blank"
                            rel="noopener">https://{$spHostnameLoadbalancer}/stream.hls</a><br /><br />
                    {/if}
                {/if}
                <h6>{lang key='sp_spcast_other_links'}</h6>
                {lang key='sp_spcast_other_links_desc'}<br />
                {lang key='sp_spcast_other_links_desc_2'}<br /><br />
                {if $spCNAMELoadBalancer}
                    <strong>{lang key='sp_spcast_player'}:</strong> <a href="https://{$spCNAMELoadBalancer}/stream.mp3" target="_blank"
                        rel="noopener">https://{$spCNAMELoadBalancer}/stream.mp3</a><br />&nbsp;<br />
                {else}
                    <strong>{lang key='sp_spcast_player'}:</strong> <a href="https://{$spHostnameLoadbalancer}/stream.mp3" target="_blank"
                        rel="noopener">https://{$spHostnameLoadbalancer}/stream.mp3</a><br />&nbsp;<br />
                {/if}
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                            data-content="{lang key='sp_spcast_shoutcastv12_datacontent'}">
                        </i> {lang key='sp_spcast_shoutcastv12'}
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <p>{lang key='sp_spcast_shoutcastv12_body'}</p>
                <h6>Shoutcast V2</h6>
                <p><strong>1</strong> <a href="https://{$spHostnameLoadbalancer}/index.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/index.html</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/played.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/played.html</a><br />
                    <strong>3:</strong> <a href="https://{$spHostnameLoadbalancer}/admin.cgi" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/admin.cgi</a><br />
                    <strong>4:</strong> <a href="https://{$spHostnameLoadbalancer}/currentsong" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/currentsong</a>
                </p>
                <h6>Shoutcast V1</h6>
                <p><strong>1:</strong> <a href="https://{$spHostnameLoadbalancer}/indexv1.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/indexv1.html</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/playedv1.html" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/playedv1.html</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/adminv1.cgi" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/adminv1.cgi</a>
                </p>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                            data-content="{lang key='sp_spcast_icecastv2_datacontent'}">
                        </i> {lang key='sp_spcast_icecastv2kh'}
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <h6>Icecast V2 / KH</h6>
                <p>{lang key='sp_spcast_icecastv2kh_body'}</p>
                <p><strong>1:</strong> <a href="https://{$spHostnameLoadbalancer}/status.xsl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/status.xsl</a><br />
                    <strong>2:</strong> <a href="https://{$spHostnameLoadbalancer}/server_version.xsl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/server_version.xsl</a><br />
                    <strong>3:</strong> <a href="https://{$spHostnameLoadbalancer}/status-json.xsl" target="_blank" rel="noopener">https://{$spHostnameLoadbalancer}/status-json.xsl</a>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        {lang key='sp_spcast_error_overview'}<br />
                        <small>{lang key='sp_spcast_error_overview_desc'}</small>
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <iframe id="spExternalIframeSPCastDiskspace" frameborder="0" src="https://{$spHostname}:9010/d/M6OcNMv4k/spcast-error-overview?orgId=1&theme=light&kiosk"
                    title="{lang key='sp_spcast_error_overview'}"></iframe>
            </div>
        </div>
    </div>
    <div class="col-sm-6">
        <div class="card card-custom sp-margin-bottom">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                            data-content="{lang key='sp_spcast_space_overview_datacontent'}">
                        </i>
                        {lang key='sp_spcast_space_overview'}<br />
                        <small>{lang key='sp_spcast_space_overview_desc'}</small>
                    </h3>
                </div>
            </div>
            <div class="card-body">
                <iframe id="spExternalIframeSPCastDiskspace" frameborder="0" src="https://{$spHostname}:9010/d/_Zv8xmMVk/spcast-diskspace?orgId=1&theme=light&kiosk"
                    title="{lang key='sp_spcast_space_overview'}"></iframe>
            </div>
        </div>
    </div>
</div>