<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="alert alert-info" role="alert">
    {lang key='sp_spcast_dashboard_alternate_note'}
</div>

<!-- Testserver / Based on Icecast KH -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}:8100/check_is_online.txt"}
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
                        {lang key='sp_spcast_dashboard_alternate_testserver'}<br />
                        <small>{lang key='sp_spcast_dashboard_alternate_testserver_desc'}</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast2information">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_dashboard_alternate_toolbar_information'}
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption1()">
                        {lang key='sp_spcast_dashboard_alternate_server_restart'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                        <strong>{lang key='sp_spcast_port'}:</strong> 8100<br />
                        <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                        <strong>{lang key='sp_spcast_slots'}:</strong> 10
                    </div>
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_playback_address'}: Icecast</strong> https://{$spHostname}:8100/stream<br /><br />
                        <strong>{lang key='sp_spcast_playback_address'}: Shoutcast V2</strong> https://{$spHostname}:8130/stream/2/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8100/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_http'}</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8100/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_https'}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_dashboard_alternate_server_credentials_datatitle'}"
                            data-content="{lang key='sp_spcast_dashboard_alternate_server_credentials_datacontent'}">
                        </i>
                        {lang key='sp_spcast_dashboard_alternate_server_credentials'}
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast2changedata">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_change_credentials'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <h4>{lang key='sp_spcast_icecast_broadcaster'}</h4>
                <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                <strong>{lang key='sp_spcast_port'}:</strong> 8100<br />
                <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                <strong>{lang key='sp_spcast_mountpoint'}:</strong> /stream<br />
                <strong>{lang key='sp_spcast_username'}:</strong> {$spServerID2Username}<br />
                <strong>{lang key='sp_spcast_password'}:</strong> {$spServerID2Password}
            </div>
        </div>
    </div>
</div>

<!-- Icecast V2 -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <!--{assign var="urlToCheck" value="https://{$spHostname}:8120/check_is_online.txt"}
                    {if checkUrl($urlToCheck)}
                        <span class="card-icon">
                            <img src="templates/reborn/assets/flaticon/24px/wifi-signal.svg" alt="{lang key='sp_spcast_server_is_online'}" />
                        </span>
                    {else}
                        <span class="card-icon blink">
                            <img src="templates/reborn/assets/flaticon/24px/no-wifi.svg" alt="{lang key='sp_spcast_server_is_offline'}" />
                        </span>
                    {/if}-->
                    <h3 class="card-label text-white">
                        {lang key='sp_spcast_dashboard_alternate_server_icecastv2'}<br />
                        <small>{lang key='sp_spcast_dashboard_alternate_server_icecastv2_desc'}</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast4information">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_dashboard_alternate_toolbar_information'}
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption3()">
                        {lang key='sp_spcast_dashboard_alternate_server_restart'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                        <strong>{lang key='sp_spcast_port'}:</strong> 8120 HTTPs / 8122 HTTP<br />
                        <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                        <strong>{lang key='sp_spcast_slots'}:</strong> 100
                    </div>
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_playback_address'}:</strong> https://{$spHostname}:8120/stream<br />
                        <strong>{lang key='sp_spcast_html5_player'}:</strong> https://{$spHostname}:8120/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8122/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_http'}</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8120/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_https'}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        {lang key='sp_spcast_dashboard_alternate_server_icecastv2_credentials'}
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_dashboard_alternate_server_icecastv2_datatitle'}"
                            data-content="{lang key='sp_spcast_dashboard_alternate_server_icecastv2_datacontent'}">
                        </i>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast4changedata">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_change_credentials'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                <strong>{lang key='sp_spcast_port'}:</strong> 8122 HTTP &amp; 8120 HTTPs<br />
                <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                <strong>{lang key='sp_spcast_mountpoint'}:</strong> /stream<br />
                <strong>{lang key='sp_spcast_username'}:</strong> {$spServerID4Username}<br />
                <strong>{lang key='sp_spcast_password'}:</strong> {$spServerID4Password}
            </div>
        </div>
    </div>
</div>

<!-- Shoutcast V2 -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}:8130/check_is_online.txt"}
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
                        {lang key='sp_spcast_dashboard_alternate_server_shoutcastv2'}<br />
                        <small>{lang key='sp_spcast_dashboard_alternate_server_shoutcastv2_desc'}</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast5information">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_dashboard_alternate_toolbar_information'}
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption4()">
                        {lang key='sp_spcast_dashboard_alternate_server_restart'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                        <strong>{lang key='sp_spcast_port'}:</strong> 8130<br />
                        <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                        <strong>{lang key='sp_spcast_slots'}:</strong> 100
                    </div>
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_playback_address'}:</strong> https://{$spHostname}:8130/stream<br />
                        <strong>{lang key='sp_spcast_html5_player'}:</strong> https://{$spHostname}:8130/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8130/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_http'}</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8130/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_https'}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_dashboard_alternate_server_shoutcastv2_datatitle'}"
                            data-content="{lang key='sp_spcast_dashboard_alternate_server_shoutcastv2_datacontent'}">
                        </i>
                        {lang key='sp_spcast_dashboard_alternate_server_shoutcastv2_credentials'}
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast5changedata">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_change_credentials'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                <strong>{lang key='sp_spcast_port'}:</strong> 8130<br />
                <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                <strong>{lang key='sp_spcast_mountpoint'}:</strong> /stream<br />
                <strong>{lang key='sp_spcast_username'}:</strong> {$spServerID5Username}<br />
                <strong>{lang key='sp_spcast_password'}:</strong> {$spServerID5Password}
            </div>
        </div>
    </div>
</div>

<!-- Icecast KH -->
<div class="row">
    <div class="col-sm-6 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    {assign var="urlToCheck" value="https://{$spHostname}:8110/check_is_online.txt"}
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
                        {lang key='sp_spcast_dashboard_alternate_server_icecastkh'}<br />
                        <small>{lang key='sp_spcast_dashboard_alternate_server_icecastkh_desc'}</small>
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast3information">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_dashboard_alternate_toolbar_information'}
                    </a>
                    <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption2()">
                        {lang key='sp_spcast_dashboard_alternate_server_restart'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                        <strong>{lang key='sp_spcast_port'}:</strong> 8110<br />
                        <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                        <strong>{lang key='sp_spcast_slots'}:</strong> 5
                    </div>
                    <div class="col-sm-6">
                        <strong>{lang key='sp_spcast_playback_address'}:</strong> https://{$spHostname}:8110/stream<br />
                        <strong>{lang key='sp_spcast_html5_player'}:</strong> https://{$spHostname}:8110/<br />
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row col-xl-12">
                    <div class="col-xl-6">
                        <a href="http://{$spHostname}:8110/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_http'}</a>
                    </div>
                    <div class="col-xl-6">
                        <a href="https://{$spHostname}:8110/stream" target="_blank" rel="noopener" class="btn btn-light-primary btn-block">{lang key='sp_spcast_open_https'}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-6 sp-margin-bottom">
        <div class=" card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_dashboard_alternate_server_icecastkh_datatitle'}"
                            data-content="{lang key='sp_spcast_dashboard_alternate_server_icecastkh_datacontent'}">
                        </i>
                        {lang key='sp_spcast_dashboard_alternate_server_icecastkh_credentials'}
                    </h3>
                </div>
                <div class="card-toolbar">
                    <a href="#" class="btn btn-sm btn-white mr-2" data-toggle="modal" data-target="#spcast3changedata">
                        <i class="flaticon2-cube"></i> {lang key='sp_spcast_change_credentials'}
                    </a>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <strong>{lang key='sp_spcast_hostname_ip'}:</strong> {$spHostname}<br />
                <strong>{lang key='sp_spcast_port'}:</strong> 8110<br />
                <strong>{lang key='sp_spcast_bitrate'}:</strong> 320 Kbit/s<br />
                <strong>{lang key='sp_spcast_mountpoint'}:</strong> /stream<br />
                <strong>{lang key='sp_spcast_username'}:</strong> {$spServerID3Username}<br />
                <strong>{lang key='sp_spcast_password'}:</strong> {$spServerID3Password}
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-sm-12 sp-margin-bottom">
        <div class="card card-custom card-stretch">
            <div class="card-header border-0 sp-bg-dark">
                <div class="card-title">
                    <h3 class="card-label text-white">
                        {lang key='sp_spcast_dashboard_alternate_server_other_integrations'}
                    </h3>
                </div>
            </div>
            <div class="separator separator-solid separator-white opacity-20"></div>
            <div class="card-body">
                <h4>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_other'}</h4>
                <p>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_other_desc'}</p>

                <h4>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_adnetwork'}</h4>
                <p>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_adnetwork_desc'}</p>

                <h5>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_audiocc'}</h5>
                <p>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_audiocc_desc'}<br />{lang key='sp_spcast_dashboard_alternate_server_other_integrations_audiocc_desc_2'}</p>

                <h5>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_rms'}</h5>
                <p>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_rms_desc'}</p>

                <h5>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_spcast'}</h5>
                <p>{lang key='sp_spcast_dashboard_alternate_server_other_integrations_spcast_desc'} (<a href="#">{lang key='sp_spcast_comingsoon'}</a>)</p>
            </div>
        </div>
    </div>
</div>