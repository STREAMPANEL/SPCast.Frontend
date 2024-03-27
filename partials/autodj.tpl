<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

{if $smarty.get.success == "password_success"}
    <div id="alert" class="alert alert-success" role="alert">
        {lang key='sp_spcast_autodj_note'}
    </div>
{/if}

{if $smarty.get.success == "password_autodj_success"}
    <div id="alert" class="alert alert-success" role="alert">
        {lang key='sp_spcast_autodj_note_2'}
    </div>
{/if}

<!-- AutoDJ Login Password -->
{capture assign=autodjPasswordURL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
{assign var=autodjPassword value=file_get_contents($autodjPasswordURL)}

{capture assign=autodjInitialOutput}
    {if strstr($autodjPassword, 'File not found') !== false}
        <a href="#" onclick="loadXMLOption0()">
            <div class="alert alert-danger" role="alert">
                {lang key='sp_spcast_autodj_note_3'}
            </div>
        </a>
    {/if}
{/capture}

{$autodjInitialOutput}

<!-- AutoDJ Source Password -->
{capture assign=autodjSourcePasswordURL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_source_password.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
{assign var=autodjSourcePassword value=file_get_contents($autodjSourcePasswordURL)}

{capture assign=autodjInitialSourceOutput}
    {if strstr($autodjSourcePassword, 'File not found') !== false}
        <div class="alert alert-danger" role="alert">
            {lang key='sp_spcast_autodj_note_6'}
        </div>
    {/if}
{/capture}

{$autodjInitialSourceOutput}

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_autodj_datatitle'}"
                    data-content="{lang key='sp_spcast_autodj_datacontent'}">
                </i>
                {lang key='sp_spcast_autodj'}<br />
                <small>{lang key='sp_spcast_autodj_desc'}</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <a class="btn btn-sm btn-white mr-2" href="#" onclick="loadXMLOption0()">
                {lang key='sp_spcast_autodj_create_password'}
            </a>
        </div>
    </div>
    <div class="card-body">
        {capture assign=autodjPasswordOutput}
            {if strstr($autodjPassword, 'File not found') !== false}
                <font color='red'>{lang key='sp_spcast_autodj_note_4'}</font>
            {elseif empty($autodjPassword)}
                <font color='red'>
                    {lang key='sp_spcast_autodj_note_5'}
                </font>
            {else}
                {$autodjPassword}
            {/if}
        {/capture}
        <div class="row">
            <div class="col-sm-12">
                {lang key='sp_spcast_autodj_autologin'}<br /><br />
                <h5>{lang key='sp_spcast_autodj_main_credentials'}</h5>
                <strong>{lang key='sp_spcast_url'}:</strong> <a href="https://{$spHostname}:9030/" target="_blank" rel="noopener">https://{$spHostname}:9030/</a><br>
                <strong>{lang key='sp_spcast_username'}:</strong> autodj@sp.radio.fm<br>
                <strong>{lang key='sp_spcast_password'}:</strong> {$autodjPasswordOutput|replace:' ':''|trim}
                <br /><br>

                <form method="post" action="https://{$spHostname}:9030/login" target="_blank" role="form">
                    <input type="hidden" name="username" value="autodj@sp.radio.fm">
                    <input type="hidden" name="password" value="{$autodjPasswordOutput|replace:' ':''|trim}">
                    <input class="btn btn-primary btn-block" type="submit" name="login" value="{lang key='sp_spcast_autodj_login'}">
                </form>
            </div>
        </div>

    </div>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_autodj_sub_credentials_datatitle'}"
                    data-content="{lang key='sp_spcast_autodj_sub_credentials_datacontent'}">
                </i>
                {lang key='sp_spcast_autodj_sub_credentials'}<br />
                <small>{lang key='sp_spcast_autodj_sub_credentials_desc'}</small>
            </h3>
        </div>
        <div class="card-toolbar">
            <div class="dropdown dropdown-inline mr-2">
                <button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="svg-icon svg-icon-md">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <rect x="0" y="0" width="24" height="24" />
                                <path
                                    d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z"
                                    fill="#000000" opacity="0.3" />
                                <path
                                    d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z"
                                    fill="#000000" />
                            </g>
                        </svg>
                    </span>{lang key='sp_tableexport'}</button>
                <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                    <ul class="navi flex-column navi-hover py-2">
                        <li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">
                            {lang key='sp_export_options'}</li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_print">
                                <span class="navi-icon">
                                    <i class="la la-print"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_print'}</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_copy">
                                <span class="navi-icon">
                                    <i class="la la-copy"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_copy'}</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_excel">
                                <span class="navi-icon">
                                    <i class="la la-file-excel-o"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_excel'}</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_csv">
                                <span class="navi-icon">
                                    <i class="la la-file-text-o"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_csv'}</span>
                            </a>
                        </li>
                        <li class="navi-item">
                            <a href="#" class="navi-link" id="export_pdf">
                                <span class="navi-icon">
                                    <i class="la la-file-pdf-o"></i>
                                </span>
                                <span class="navi-text">{lang key='sp_pdf'}</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="card-body">

        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>{lang key='sp_spcast_id'}</th>
                    <th>{lang key='sp_spcast_username'}</th>
                    <th>{lang key='sp_spcast_password'}</th>
                    <th>{lang key="sp_action"}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>autodj_subaccount1@sp.radio.fm</td>
                    {capture assign=autodjSubaccount1URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_1.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount1 value=file_get_contents($autodjSubaccount1URL)}

                    {if strstr($autodjSubaccount1, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount1}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption1()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>2</td>
                    <td>autodj_subaccount2@sp.radio.fm</td>
                    {capture assign=autodjSubaccount2URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_2.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount2 value=file_get_contents($autodjSubaccount2URL)}

                    {if strstr($autodjSubaccount2, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount2}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption2()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>autodj_subaccount3@sp.radio.fm</td>
                    {capture assign=autodjSubaccount3URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_3.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount3 value=file_get_contents($autodjSubaccount3URL)}

                    {if strstr($autodjSubaccount3, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount3}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption3()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>4</td>
                    <td>autodj_subaccount4@sp.radio.fm</td>
                    {capture assign=autodjSubaccount4URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_4.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount4 value=file_get_contents($autodjSubaccount4URL)}

                    {if strstr($autodjSubaccount4, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount4}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption4()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>5</td>
                    <td>autodj_subaccount5@sp.radio.fm</td>
                    {capture assign=autodjSubaccount5URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_5.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount5 value=file_get_contents($autodjSubaccount5URL)}

                    {if strstr($autodjSubaccount5, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount5}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption5()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>6</td>
                    <td>autodj_subaccount6@sp.radio.fm</td>
                    {capture assign=autodjSubaccount6URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_6.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount6 value=file_get_contents($autodjSubaccount6URL)}

                    {if strstr($autodjSubaccount6, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount6}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption6()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>7</td>
                    <td>autodj_subaccount7@sp.radio.fm</td>
                    {capture assign=autodjSubaccount7URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_7.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount7 value=file_get_contents($autodjSubaccount7URL)}

                    {if strstr($autodjSubaccount7, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount7}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption7()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>8</td>
                    <td>autodj_subaccount8@sp.radio.fm</td>
                    {capture assign=autodjSubaccount8URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_8.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount8 value=file_get_contents($autodjSubaccount8URL)}

                    {if strstr($autodjSubaccount8, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount8}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption8()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>9</td>
                    <td>autodj_subaccount9@sp.radio.fm</td>
                    {capture assign=autodjSubaccount9URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_9.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount9 value=file_get_contents($autodjSubaccount9URL)}

                    {if strstr($autodjSubaccount9, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount9}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption9()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>10</td>
                    <td>autodj_subaccount10@sp.radio.fm</td>
                    {capture assign=autodjSubaccount10URL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_reset_password_10.php.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
                    {assign var=autodjSubaccount10 value=file_get_contents($autodjSubaccount10URL)}

                    {if strstr($autodjSubaccount10, 'File not found') !== false}
                        <td>{lang key='sp_spcast_autodj_sub_credentials_nopassword'}</td>
                    {else}
                        <td>{$autodjSubaccount10}</td>
                    {/if}
                    <td>
                        <a class="btn btn-block btn-sm btn-primary" href="#" onclick="loadXMLOption10()">
                            {lang key='sp_spcast_autodj_sub_credentials_newpassword'}
                        </a>
                    </td>
                </tr>

            </tbody>
        </table>

    </div>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_autodj_source'}<br />
                <small>{lang key='sp_spcast_autodj_source_desc'}</small>
            </h3>
        </div>
    </div>
    <div class="card-body">
        {capture assign=autodjSourcePasswordOutput}
            {if strstr($autodjSourcePassword, 'File not found') !== false}
                <font color='red'>error</font>
            {elseif empty($autodjSourcePassword)}
                <font color='red'>error</font>
            {else}
                {$autodjSourcePassword}
            {/if}
        {/capture}
        <div class="row">
            <div class="col-sm-12">
                {lang key='sp_spcast_autodj_source_credentials_desc'}<br /><br />
                <h5>{lang key='sp_spcast_autodj_source_credentials'}</h5>
                <strong>{lang key='sp_spcast_url'}:</strong> {$spHostname}<br>
                <strong>{lang key='sp_spcast_port'}:</strong> 8160<br>
                <strong>{lang key='sp_spcast_mountpoint'}:</strong> /stream<br>
                <strong>{lang key='sp_spcast_username'}:</strong> source<br>
                <strong>{lang key='sp_spcast_password'}:</strong> {$autodjSourcePasswordOutput|replace:' ':''|trim}</br></br>
                <strong>{lang key='sp_attention'}:</strong> {lang key='sp_spcast_autodj_source_desc2'}
            </div>
        </div>
    </div>
</div>