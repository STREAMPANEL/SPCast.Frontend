<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="row">
    <div class="col-xl-12">
        <!--begin::Nav Panel Widget 1-->
        <div class="card card-custom gutter-b">
            <!--begin::Body-->
            <div class="card-body">
                <!--begin::Nav Tabs-->
                <ul class="dashboard-tabs nav nav-pills nav-danger row row-paddingless m-0 p-0 flex-column flex-sm-row" role="tablist">
                    <!--begin::Item-->
                    <li class="nav-item d-flex col-sm flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0">
                        <a class="nav-link active border py-10 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_settings_1">
                            <span class="nav-icon py-2 w-auto">
                                <span class="svg-icon svg-icon-3x">
                                    <!--begin::Svg Icon | path:assets/media/svg/icons/Home/Library.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <rect x="0" y="0" width="24" height="24"></rect>
                                            <path
                                                d="M5,3 L6,3 C6.55228475,3 7,3.44771525 7,4 L7,20 C7,20.5522847 6.55228475,21 6,21 L5,21 C4.44771525,21 4,20.5522847 4,20 L4,4 C4,3.44771525 4.44771525,3 5,3 Z M10,3 L11,3 C11.5522847,3 12,3.44771525 12,4 L12,20 C12,20.5522847 11.5522847,21 11,21 L10,21 C9.44771525,21 9,20.5522847 9,20 L9,4 C9,3.44771525 9.44771525,3 10,3 Z"
                                                fill="#000000"></path>
                                            <rect fill="#000000" opacity="0.3" transform="translate(17.825568, 11.945519) rotate(-19.000000) translate(-17.825568, -11.945519)" x="16.3255682"
                                                y="2.94551858" width="3" height="18" rx="1"></rect>
                                        </g>
                                    </svg>
                                    <!--end::Svg Icon-->
                                </span>
                            </span>
                            <span class="nav-text font-size-lg py-2 font-weight-bold text-center">Radiobeschreibung</span>
                        </a>
                    </li>
                    <!--end::Item-->
                    <!--begin::Item-->
                    {if $spAudioCCModus == "0"}
                        <li class="nav-item d-flex col-sm flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0">
                            <a class="nav-link border py-10 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_settings_2">
                                <span class="nav-icon py-2 w-auto">
                                    <span class="svg-icon svg-icon-3x">
                                        <!--begin::Svg Icon | path:assets/media/svg/icons/Layout/Layout-4-blocks.svg-->
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                <rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5"></rect>
                                                <path
                                                    d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z"
                                                    fill="#000000" opacity="0.3"></path>
                                            </g>
                                        </svg>
                                        <!--end::Svg Icon-->
                                    </span>
                                </span>
                                <span class="nav-text font-size-lg py-2 font-weight-bolder text-center">HTML5-Player</span>
                            </a>
                        </li>
                    {/if}
                    <!--end::Item-->
                    <!--begin::Item-->
                    <li class="nav-item d-flex col-sm flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0">
                        <a class="nav-link border py-10 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_settings_3">
                            <span class="nav-icon py-2 w-auto">
                                <span class="svg-icon svg-icon-3x">
                                    <!--begin::Svg Icon | path:assets/media/svg/icons/Media/Movie-Lane2.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <rect x="0" y="0" width="24" height="24"></rect>
                                            <path
                                                d="M6,3 L18,3 C19.1045695,3 20,3.8954305 20,5 L20,19 C20,20.1045695 19.1045695,21 18,21 L6,21 C4.8954305,21 4,20.1045695 4,19 L4,5 C4,3.8954305 4.8954305,3 6,3 Z M5.5,5 C5.22385763,5 5,5.22385763 5,5.5 L5,6.5 C5,6.77614237 5.22385763,7 5.5,7 L6.5,7 C6.77614237,7 7,6.77614237 7,6.5 L7,5.5 C7,5.22385763 6.77614237,5 6.5,5 L5.5,5 Z M17.5,5 C17.2238576,5 17,5.22385763 17,5.5 L17,6.5 C17,6.77614237 17.2238576,7 17.5,7 L18.5,7 C18.7761424,7 19,6.77614237 19,6.5 L19,5.5 C19,5.22385763 18.7761424,5 18.5,5 L17.5,5 Z M5.5,9 C5.22385763,9 5,9.22385763 5,9.5 L5,10.5 C5,10.7761424 5.22385763,11 5.5,11 L6.5,11 C6.77614237,11 7,10.7761424 7,10.5 L7,9.5 C7,9.22385763 6.77614237,9 6.5,9 L5.5,9 Z M17.5,9 C17.2238576,9 17,9.22385763 17,9.5 L17,10.5 C17,10.7761424 17.2238576,11 17.5,11 L18.5,11 C18.7761424,11 19,10.7761424 19,10.5 L19,9.5 C19,9.22385763 18.7761424,9 18.5,9 L17.5,9 Z M5.5,13 C5.22385763,13 5,13.2238576 5,13.5 L5,14.5 C5,14.7761424 5.22385763,15 5.5,15 L6.5,15 C6.77614237,15 7,14.7761424 7,14.5 L7,13.5 C7,13.2238576 6.77614237,13 6.5,13 L5.5,13 Z M17.5,13 C17.2238576,13 17,13.2238576 17,13.5 L17,14.5 C17,14.7761424 17.2238576,15 17.5,15 L18.5,15 C18.7761424,15 19,14.7761424 19,14.5 L19,13.5 C19,13.2238576 18.7761424,13 18.5,13 L17.5,13 Z M17.5,17 C17.2238576,17 17,17.2238576 17,17.5 L17,18.5 C17,18.7761424 17.2238576,19 17.5,19 L18.5,19 C18.7761424,19 19,18.7761424 19,18.5 L19,17.5 C19,17.2238576 18.7761424,17 18.5,17 L17.5,17 Z M5.5,17 C5.22385763,17 5,17.2238576 5,17.5 L5,18.5 C5,18.7761424 5.22385763,19 5.5,19 L6.5,19 C6.77614237,19 7,18.7761424 7,18.5 L7,17.5 C7,17.2238576 6.77614237,17 6.5,17 L5.5,17 Z"
                                                fill="#000000" opacity="0.3"></path>
                                            <path
                                                d="M11.3521577,14.5722612 L13.9568442,12.7918113 C14.1848159,12.6359797 14.2432972,12.3248456 14.0874656,12.0968739 C14.0526941,12.0460053 14.0088196,12.002002 13.9580532,11.9670814 L11.3533667,10.1754041 C11.1258528,10.0189048 10.8145486,10.0764735 10.6580493,10.3039875 C10.6007019,10.3873574 10.5699997,10.4861652 10.5699997,10.5873545 L10.5699997,14.1594818 C10.5699997,14.4356241 10.7938573,14.6594818 11.0699997,14.6594818 C11.1706891,14.6594818 11.2690327,14.6290818 11.3521577,14.5722612 Z"
                                                fill="#000000"></path>
                                        </g>
                                    </svg>
                                    <!--end::Svg Icon-->
                                </span>
                            </span>
                            <span class="nav-text font-size-lg py-2 font-weight-bolder text-center">SPCast</span>
                        </a>
                    </li>
                    <!--end::Item-->
                    <!--begin::Item-->
                    {if $spAudioCCModus == "0"}
                        <li class="nav-item d-flex col-sm flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0">
                            <a class="nav-link border py-10 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_settings_4">
                                <span class="nav-icon py-2 w-auto">
                                    <span class="svg-icon svg-icon-3x">
                                        <!--begin::Svg Icon | path:assets/media/svg/icons/Media/Equalizer.svg-->
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                <rect fill="#000000" opacity="0.3" x="13" y="4" width="3" height="16" rx="1.5"></rect>
                                                <rect fill="#000000" x="8" y="9" width="3" height="11" rx="1.5"></rect>
                                                <rect fill="#000000" x="18" y="11" width="3" height="9" rx="1.5"></rect>
                                                <rect fill="#000000" x="3" y="13" width="3" height="7" rx="1.5"></rect>
                                            </g>
                                        </svg>
                                        <!--end::Svg Icon-->
                                    </span>
                                </span>
                                <span class="nav-text font-size-lg py-2 font-weight-bolder text-center">Relay-Modus</span>
                            </a>
                        </li>
                    {/if}
                    <!--end::Item-->
                    <!--begin::Item-->
                    {if $spAudioCCModus == "0"}
                        <li class="nav-item d-flex col-sm flex-grow-1 flex-shrink-0 mr-3 mb-3 mb-lg-0">
                            <a class="nav-link border py-10 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_settings_5">
                                <span class="nav-icon py-2 w-auto">
                                    <span class="svg-icon svg-icon-3x">
                                        <!--begin::Svg Icon | path:assets/media/svg/icons/General/Shield-check.svg-->
                                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                            <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                <rect x="0" y="0" width="24" height="24"></rect>
                                                <path
                                                    d="M4,4 L11.6314229,2.5691082 C11.8750185,2.52343403 12.1249815,2.52343403 12.3685771,2.5691082 L20,4 L20,13.2830094 C20,16.2173861 18.4883464,18.9447835 16,20.5 L12.5299989,22.6687507 C12.2057287,22.8714196 11.7942713,22.8714196 11.4700011,22.6687507 L8,20.5 C5.51165358,18.9447835 4,16.2173861 4,13.2830094 L4,4 Z"
                                                    fill="#000000" opacity="0.3"></path>
                                                <path
                                                    d="M11.1750002,14.75 C10.9354169,14.75 10.6958335,14.6541667 10.5041669,14.4625 L8.58750019,12.5458333 C8.20416686,12.1625 8.20416686,11.5875 8.58750019,11.2041667 C8.97083352,10.8208333 9.59375019,10.8208333 9.92916686,11.2041667 L11.1750002,12.45 L14.3375002,9.2875 C14.7208335,8.90416667 15.2958335,8.90416667 15.6791669,9.2875 C16.0625002,9.67083333 16.0625002,10.2458333 15.6791669,10.6291667 L11.8458335,14.4625 C11.6541669,14.6541667 11.4145835,14.75 11.1750002,14.75 Z"
                                                    fill="#000000"></path>
                                            </g>
                                        </svg>
                                        <!--end::Svg Icon-->
                                    </span>
                                </span>
                                <span class="nav-text font-size-lg py-2 font-weight-bolder text-center">Rechtliche Gegebenheiten</span>
                            </a>
                        </li>
                    {/if}
                    <!--end::Item-->
                    <!--begin::Item-->
                    <li class="nav-item d-flex col-sm flex-grow-1 flex-shrink-0 mr-0 mb-3 mb-lg-0">
                        <a class="nav-link border py-10 d-flex flex-grow-1 rounded flex-column align-items-center" data-toggle="pill" href="#tab_settings_6">
                            <span class="nav-icon py-2 w-auto">
                                <span class="svg-icon svg-icon-3x">
                                    <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group.svg-->
                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                            <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                            <path
                                                d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z"
                                                fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                            <path
                                                d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z"
                                                fill="#000000" fill-rule="nonzero"></path>
                                        </g>
                                    </svg>
                                    <!--end::Svg Icon-->
                                </span>
                            </span>
                            <span class="nav-text font-size-lg py-2 font-weight-bolder text-center">Sonstiges</span>
                        </a>
                    </li>
                    <!--end::Item-->
                </ul>
                <!--end::Nav Tabs-->
                <!--begin::Nav Content-->
                <br />
                <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
                    <div class="tab-content m-0 p-0">
                        <div class="tab-pane active" id="tab_settings_1" role="tabpanel">
                            <div class="card card-custom sp-margin-bottom">
                                <div class="card-header border-0 sp-bg-dark">
                                    <div class="card-title">
                                        <h3 class="card-label text-white">
                                            {lang key='sp_spcast_settings_webradio'}<br />
                                            <small>{lang key='sp_spcast_settings_webradio_desc'}</small>
                                        </h3>
                                    </div>
                                </div>
                                <div class="card-body">

                                    {if $spSettingsRadioName == ""}
                                        <div class="alert alert-danger" role="alert">
                                            {lang key='sp_spcast_settings_webradio_not_functional'}
                                        </div>
                                    {/if}

                                    <div class="form-group">
                                        <label for="InputRadioName"><strong>{lang key='sp_spcast_settings_webradio_name'}</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioName" aria-describedby="InputRadioName"
                                            placeholder="{lang key='sp_spcast_settings_webradio_name_placeholder'}" required="required" name="spSettingsRadioName" value="{$spSettingsRadioName}" />
                                        <small id="InputRadioName" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_name_desc'}</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioDescription"><strong>{lang key='sp_spcast_settings_webradio_description'}</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioDescription" aria-describedby="InputRadioDescription"
                                            placeholder="{lang key='sp_spcast_settings_webradio_description_placeholder'}" required="required" name="spSettingsRadioDescription"
                                            value="{$spSettingsRadioDescription}" />
                                        <small id="InputRadioDescription" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_description_desc'}</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioGenre"><strong>{lang key='sp_spcast_settings_webradio_genre'}</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioGenre" aria-describedby="InputRadioGenre"
                                            placeholder="{lang key='sp_spcast_settings_webradio_genre_placeholder'}" required="required" name="spSettingsRadioGenre" value="{$spSettingsRadioGenre}" />
                                        <small id="InputRadioGenre" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_genre_desc'}</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioURL"><strong>{lang key='sp_spcast_settings_webradio_url'}</strong></label>
                                        <input type="url" class="form-control" id="spSettingsRadioURL" aria-describedby="InputRadioURL"
                                            placeholder="{lang key='sp_spcast_settings_webradio_url_placeholder'}" required="required" name="spSettingsRadioURL" value="{$spSettingsRadioURL}" />
                                        <small id="InputRadioURL" class="form-text text-muted">{lang key='sp_spcast_settings_webradio_url_desc'}: https://{$spHostname}</small>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row col-xl-12">
                                        <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_settings_2" role="tabpanel">
                            <div class="card card-custom sp-margin-bottom">
                                <div class="card-header border-0 sp-bg-dark">
                                    <div class="card-title">
                                        <h3 class="card-label text-white">
                                            HTML5-Player<br />
                                            <small></small>
                                        </h3>
                                    </div>
                                </div>
                                <div class="card-body">

                                    <h4>HTML5-Player</h4>

                                    <p>Standardmäßig ist der HTML5-Player innerhalb Ihrer Umgebung immer aktiviert. Auf Wunsch können Sie den Standard-HTML5-Player für Ihre Umgebung auch vollständig
                                        deaktivieren.</p>

                                    <div class="controls checkbox">
                                        <label>
                                            <input type="checkbox" name="spSettingsHTMLPlayer" value="1" {if $spSettingsHTMLPlayer} checked{/if} class="no-icheck toggle-switch-success"
                                                data-size="small" data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                                            HTML5-Player aktivieren?
                                        </label>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioNoCoverURL"><strong>NoCover-URL</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioNoCoverURL" aria-describedby="InputRadioNoCoverURL"
                                            placeholder="Geben Sie eine URL für ein eigenes NoCover-Bild an." required="required" name="spSettingsRadioNoCoverURL"
                                            value="{$spSettingsRadioNoCoverURL}" />
                                        <small id="InputRadioNoCoverURL" class="form-text text-muted">Im Standard wird in allen Bereichen das NoCover-Bild angezeigt, wenn wir kein Cover für den
                                            jeweiligen Song finden
                                            konnten. Sie können hier eine eigene URL für ein eigenes NoCover-Bild angeben.</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioLogoURL"><strong>Logo-URL</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioLogoURL" aria-describedby="InputRadioLogoURL"
                                            placeholder="Geben Sie eine URL für ein eigenes NoCover-Bild an." required="required" name="spSettingsRadioLogoURL" value="{$spSettingsRadioLogoURL}" />
                                        <small id="InputRadioLogoURL" class="form-text text-muted">Im Standard wird das STREAMPANEL-Logo angezeigt. Sie können hier eine eigene URL für Ihr eigenes Logo
                                            angeben.</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioBackgroundURL"><strong>Background-URL</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioBackgroundURL" aria-describedby="InputRadioBackgroundURL"
                                            placeholder="Geben Sie eine URL für ein eigenes NoCover-Bild an." required="required" name="spSettingsRadioBackgroundURL"
                                            value="{$spSettingsRadioBackgroundURL}" />
                                        <small id="InputRadioBackgroundURL" class="form-text text-muted">Im Standard geben wir in allen Bereichen einen eigenen Hintergrund aus. Sie können hier eine
                                            eigene URL für ein eigenen
                                            Hintergrund angeben.<br />
                                            <strong>Achtung:</strong> Das Standard-Hintergrundbild ist urheberrechtlich geschützt. Sie dürfen es unter keinen Umständen außerhalb des HTML5-Players der
                                            SPCast-Umgebung
                                            nutzen.</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputRadioFaviconURL"><strong>Favicon-URL</strong></label>
                                        <input type="text" class="form-control" id="spSettingsRadioFaviconURL" aria-describedby="InputRadioFaviconURL"
                                            placeholder="Geben Sie eine URL für ein eigenes Favicon-Bild an." name="spSettingsRadioFaviconURL" value="{$spSettingsRadioFaviconURL}" />
                                        <small id="InputRadioFaviconURL" class="form-text text-muted">Optinales Feld. Im Standard wird das STREAMPANEL-Favicon angezeigt. Sie können hier eine eigene
                                            URL für Ihr eigenes
                                            Favicon im PNG-Format
                                            angeben.</small>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row col-xl-12">
                                        <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_settings_3" role="tabpanel">
                            <div class="card card-custom sp-margin-bottom">
                                <div class="card-header border-0 sp-bg-dark">
                                    <div class="card-title">
                                        <h3 class="card-label text-white">
                                            {lang key='sp_spcast_settings'}<br />
                                            <small>{lang key='sp_spcast_settings_desc'}</small>
                                        </h3>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <h3>AutoDJ (Intern)</h3>

                                    <h4>Modus der Ausspielungen</h4>

                                    <p>- Im Standard werden die Inhalte zum festgelegten Zeitpunkt eingespielt. Beim Nutzer wird also der aktuell laufende Song unterbrochen und die Inhalte werden
                                        eingespielt. Derweil
                                        läuft der AutoDJ im Hintergrund weiter. Am Ende der Inhalte wird der AutoDJ im aktuellen Stand fortgesetzt. (Ohne FADE-Funktion)<br /><br />
                                        - Wenn Sie den Alternativen Modus aktivieren, werden Ihre Inhalte zum festgelegten Zeitpunkt eingespielt. Beim Nutzer wird also erneut der laufende Song
                                        unterbrochen und die
                                        Inhalte werden eingespielt. Am Ende der Inhalte beginnt der AutoDJ mit einem neuen Song, basierend auf Ihrer Planung im AutoDJ. (Mit FADE-Funktion. Im AutoDJ
                                        muss der Streamer-Modus für diesen Modus zwingend aktiviert sein.)</p>

                                    <div class="controls checkbox">
                                        <label>
                                            <input type="checkbox" name="spNewsModus" value="1" {if $spNewsModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                                                data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                                            Alternativen Modus für "Nachrichten" aktivieren?
                                        </label>
                                    </div>

                                    <div class="controls checkbox">
                                        <label>
                                            <input type="checkbox" name="spJinglesModus" value="1" {if $spJinglesModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                                                data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                                            Alternativen Modus für "Jingles" aktivieren?
                                        </label>
                                    </div>

                                    <!--<div class="form-group">
                <label for="InputGoogleAnalytics"><strong>Google Analytics</strong></label>
                <input type="text" class="form-control" id="spSettingsInputGoogleAnalytics" aria-describedby="InputGoogleAnalytics" placeholder="Kopieren Sie hier ihre Google Analytics ID hinein."
                    required="required" name="spSettingsInputGoogleAnalytics" value="{$spSettingsInputGoogleAnalytics}" />
                <small id="InputGoogleAnalytics" class="form-text text-muted">Nach Eintragung ihrer Google Analytics ID müssen Sie über das Dashboard den SPCast Server einmal neu starten.</small>
            </div>-->

                                    {if $spAudioCCModus == "0"}
                                        <hr style="background-color: red;">

                                        <h3>Schnittstelle (API)</h3>

                                        <h4>DJ / Moderatoren</h4>

                                        <p>Wenn Sie hier einen Sicherheitstoken angeben, können Sie Ihren Moderatoren ermöglichen, Zuhörer über eine öffentliche URL zu verschieben, ohne Ihr
                                            Administratorpasswort an
                                            irgendjemanden weiterzugeben. Wir empfehlen einen Token von mindestens 16 und maximal 32 Zeichen, der eine Kombination aus Zahlen und Buchstaben enthält!</p>

                                        <div class="form-group">
                                            <label for="InputListenersToken"><strong>Zuhörer Verschieben: Sicherheitstoken</strong></label>
                                            <input type="text" class="form-control" id="spDJMoveListenersToken" aria-describedby="InputListenersToken" placeholder="Geben Sie einen Sicherheitstoken ein."
                                                required="required" name="spDJMoveListenersToken" value="{$spDJMoveListenersToken}" />
                                        </div>
                                    {/if}

                                    <hr style="background-color: red;">

                                    <h3>CNAME</h3>

                                    <p>CNAME-Einstellungen hier ändern nur die Anzeige im Interface. Es erleichtert Ihnen die Arbeit, indem alle relevanten Verweise direkt angepasst werden. Wenn Sie
                                        einen CNAME-Eintrag
                                        angelegt haben, eröffnen Sie bitte ein Support-Ticket, damit wir davon Kenntnis haben. Derzeit gibt es keine Automation in diese Richtung, und wir müssen Ihre
                                        Domain einmalig
                                        einpflegen.</p>

                                    <h4>LoadBalancer</h4>

                                    <p>Wenn Sie über eine eigene Domain verfügen und Zugriff auf die DNS-Einstellungen haben, können Sie die URLs des LoadBalancers für Ihr Branding ändern. Erstellen
                                        Sie dafür einen
                                        CNAME-Eintrag mit dem Ziel "loadbalancer.sp.radio.fm".<br /> <strong>FAQ aufrufen:</strong> <a
                                            href="https://www.spcast.eu/faq/allgemein/einrichtung-eines-cname-fuer-die-anpassung-der-loadbalancer-url/" target="_blank"
                                            rel="noopener">https://www.spcast.eu/faq/allgemein/einrichtung-eines-cname-fuer-die-anpassung-der-loadbalancer-url/</a></p>

                                    <div class="form-group">
                                        <label for="InputCNAMELoadBalancer"><strong>CNAME: Loadbalancer</strong></label>
                                        <input type="text" class="form-control" id="spCNAMELoadBalancer" aria-describedby="InputCNAMELoadBalancer"
                                            placeholder="Tragen Sie die Domain ein, die Sie für den LoadBalancer nutzen möchten." name="spCNAMELoadBalancer" value="{$spCNAMELoadBalancer}" />
                                    </div>

                                    <h4>System <i>(Noch nicht unterstützt!)</i></h4>

                                    <p>Wenn Sie über eine eigene Domain verfügen und Zugriff auf die DNS-Einstellungen haben, können Sie die URLs des eigentlichen Systems für Ihr Branding ändern.
                                        Erstellen Sie dafür einen
                                        CNAME-Eintrag mit dem Ziel "{$spHostnameLoadbalancer}".</p>

                                    <div class="form-group">
                                        <label for="InputCNAMESystem"><strong>CNAME: System</strong></label>
                                        <input type="text" class="form-control" id="spCNAMESystem" aria-describedby="InputCNAMESystem"
                                            placeholder="Tragen Sie die Domain ein, die Sie für das eigentliche System nutzen möchten." name="spCNAMESystem" value="{$spCNAMESystem}" />
                                    </div>

                                    <hr style="background-color: red;">

                                    <h3>SPCast Umgebung</h3>

                                    <h4>Format <i>(Noch nicht unterstützt!)</i></h4>

                                    <p>Natürlich kann die SPCast-Umgebung nicht nur MP3 verarbeiten. Hierfür sind jedoch einige Anpassungen unsererseits nötig. Daher kann dies derzeit nicht geändert
                                        werden.</p>

                                    <div class="form-group">
                                        <label for="InputMusicFormat"><strong>Format</strong></label>
                                        <input type="text" class="form-control" id="spSettingsMusicFormat" aria-describedby="InputMusicFormat"
                                            placeholder="Wählen Sie ein das Format aus der Auswahlliste aus unter welchen Sie die Umgebung betreiben möchten." name="spSettingsMusicFormat"
                                            value="{$spSettingsMusicFormat}" readonly />
                                    </div>

                                    <h4>SampleRate</h4>

                                    <p>Die SampleRate (auf Deutsch "Abtastrate") einer Musikdatei gibt an, wie oft pro Sekunde der Ton einer Audioaufnahme gemessen (oder "abgetastet") wurde, als sie
                                        digitalisiert wurde. Man kann es sich wie die "Auflösung" des Tons vorstellen. Eine höhere Sample-Rate kann mehr Details des Tons erfassen, aber die Dateigröße
                                        wird ebenfalls größer.
                                    </p>

                                    <p>Der Standardwert von 44.100 bedeutet, dass der Ton 44.100 Mal pro Sekunde gemessen wurde. Dieser Wert ist für die meisten Anwendungen, einschließlich CDs,
                                        optimal.</p>

                                    <p>Wenn Sie die Sample-Rate anpassen, sollten Sie bedenken:</p>
                                    <ul>
                                        <li>Eine höhere Rate kann mehr Klangdetails bieten, benötigt aber mehr Speicherplatz.</li>
                                        <li>Eine niedrigere Rate spart Speicherplatz, kann aber zu einer minderwertigen Klangqualität führen.</li>
                                    </ul>
                                    <p>Wenn Sie nicht wissen, was Sie tun, belassen Sie diese Einstellung auf dem Standardwert: 44100</p>

                                    <div class="form-group">
                                        <label for="InputMusicSampleRate"><strong>SampleRate</strong></label>
                                        <input type="text" class="form-control" id="spSettingsMusicSampleRate" aria-describedby="InputMusicSampleRate"
                                            placeholder="Geben Sie eine gültige SampleRate ein." name="spSettingsMusicSampleRate" value="{$spSettingsMusicSampleRate}" required="required" />
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row col-xl-12">
                                        <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_settings_4" role="tabpanel">
                            <div class="card card-custom sp-margin-bottom">
                                <div class="card-header border-0 sp-bg-dark">
                                    <div class="card-title">
                                        <h3 class="card-label text-white">
                                            Relay Modus<br />
                                            <small></small>
                                        </h3>
                                    </div>
                                </div>
                                <div class="card-body">

                                    <h4>Relay Modus aktivieren</h4>

                                    <p>Auf Wunsch können Sie Ihre Umgebung im Relay-Modus betreiben. Das heißt einfach gesagt, dass Ihr Programm von einer externen Stelle empfangen wird. Dies kann
                                        nützlich sein, wenn ein
                                        Wechsel auf der SPCast-Plattform derzeit keine Option ist. Durch den Relay-Modus wird der AutoDJ deaktiviert, dennoch profitieren Sie dabei von allen Funktionen
                                        innerhalb der SPCast Umgebung.</p>

                                    <div class="controls checkbox">
                                        <label>
                                            <input type="checkbox" name="spRelayModus" value="1" {if $spRelayModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                                                data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                                            Umgebung im Relay Modus betreiben?
                                        </label>
                                    </div>

                                    <h4>Relay-URL</h4>

                                    <p>Geben Sie hier die externe URL an, von der das Programm in Ihren Streamserver eingespielt werden soll.</p>

                                    <div class="form-group">
                                        <label for="InputRelayURL"><strong>Relay-URL</strong></label>
                                        <input type="url" class="form-control" id="spSettingsRelayURL" aria-describedby="InputRelayURL" placeholder="Beispiel: https://example.com/stream"
                                            name="spSettingsRelayURL" value="{$spSettingsRelayURL}" />
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row col-xl-12">
                                        <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_settings_5" role="tabpanel">
                            <div class="card card-custom sp-margin-bottom">
                                <div class="card-header border-0 sp-bg-dark">
                                    <div class="card-title">
                                        <h3 class="card-label text-white">
                                            Rechtliche Gegebenheiten<br />
                                            <small></small>
                                        </h3>
                                    </div>
                                </div>
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="InputSettingsPrivacy"><strong>Datenschutz</strong></label>
                                        <small id="InputSettingsPrivacy" class="form-text text-muted">Auch ein Webradio ist nicht von der Verpflichtung einer Datenschutzerklärung ausgenommen.<br />
                                            <strong>Tipp:</strong> Die folgende Textarea unterstützt auch HTML-Tags. Sie können Ihre Datenschutzerklärung also in einen Editor Ihrer Wahl formatieren
                                            und hier
                                            hineinkopieren.<br />
                                            <strong>Hinweis:</strong> Der Datenschutzverweis wird mit dem von uns gehosteten <a href='https://{$spHostname}/' target='_blank'
                                                rel='noopener'>HTML5-Player</a>
                                            verlinkt.</small><br />
                                        <textarea class="form-control" name="spSettingsPrivacy" id="spSettingsPrivacy" value="{$spSettingsPrivacy}" placeholder="Datenschutzerklärung"
                                            style="height: 250px">{$spSettingsPrivacy}</textarea>
                                    </div>

                                    <div class="form-group">
                                        <label for="InputSettingsImprint"><strong>Impressum</strong></label>
                                        <small id="InputSettingsImprint" class="form-text text-muted">Auch ein Webradio ist nicht von der Verpflichtung eines Impressums ausgenommen.<br />
                                            <strong>Tipp:</strong> Die folgende Textarea unterstützt auch HTML-Tags. Sie können Ihr Impressum also in einen Editor Ihrer Wahl formatieren und hier
                                            hineinkopieren.<br />
                                            <strong>Hinweis:</strong> Das Impressum wird mit dem von uns gehosteten <a href='https://{$spHostname}/' target='_blank' rel='noopener'>HTML5-Player</a>
                                            verlinkt.</small><br />
                                        <textarea class="form-control" name="spSettingsImprint" id="spSettingsImprint" value="{$spSettingsImprint}" placeholder="Impressum"
                                            style="height: 250px">{$spSettingsImprint}</textarea>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row col-xl-12">
                                        <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab_settings_6" role="tabpanel">
                            <div class="card card-custom sp-margin-bottom">
                                <div class="card-header border-0 sp-bg-dark">
                                    <div class="card-title">
                                        <h3 class="card-label text-white">
                                            Sonstige Optionen<br />
                                            <small></small>
                                        </h3>
                                    </div>
                                </div>
                                <div class="card-body">

                                    <h4>AudioCC Modus</h4>

                                    <p>Wenn Sie sich bei uns als AudioCC-Kunde registriert haben, müssen Sie spezielle Versionen von Icecast V2 oder Icecast KH Server des Anbieters einsetzen. Wir
                                        setzen hierbei auf die
                                        Icecast KH Version. SPCast-Streamserver sind jedoch weitaus moderner, latenzfrei und geben uns mehr Spielraum bei der Bereitstellung von Funktionen. Wenn Sie
                                        möchten, haben Sie hier
                                        die Möglichkeit, das Interface für einen SPCast-Streamserver zu simulieren. Als AudioCC Nutzer sollte diese Funktion natürlich dauerhaft aktiviert bleiben! Wenn
                                        Sie als AudioCC-Kunde
                                        Funktionen vermissen, zögern Sie nicht, uns zu schreiben.</p>

                                    <div class="controls checkbox">
                                        <label>
                                            <input type="checkbox" name="spAudioCCModus" value="1" {if $spAudioCCModus} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                                                data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                                            Interface für AudioCC anpassen?
                                        </label>
                                    </div>

                                    <h4>Cashbox</h4>

                                    <p>Die Cashbox ist eine Integration, die es Ihren Besuchern/Nutzern ermöglicht, Einzahlungen anonym oder unter ihrem eigenen Namen auf ihren Kundenaccount
                                        vorzunehmen. Die Einsatzszenarien
                                        bleiben Ihnen überlassen, egal ob Sie Spenden sammeln, um den Betrieb der Station zu unterstützen, oder Ihr Team sich an den Kosten beteiligen lässt. Bitte
                                        beachten Sie, dass es
                                        aufgrund gesetzlicher Bestimmungen keine Auszahlungen für diese Einzahlungen gibt. Sie können Einzahlungen über die Cashbox ausschließlich für Produkte
                                        innerhalb Ihres Accounts
                                        verwenden. Eine aktivierte Cashbox wird automatisch im Standard HTML5-Player verlinkt.</p>

                                    <p><a href="https://login.streampanel.net/index.php?m=cashbox" target="_blank" rel="noopener">Cashbox-Einstellungen aufrufen</a></p>

                                    <div class="controls checkbox">
                                        <label>
                                            <input type="checkbox" name="spUseCashbox" value="1" {if $spUseCashbox} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                                                data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" />
                                            Cashbox aktivieren?
                                        </label>
                                    </div>

                                    <h4>Zugriffsverwaltung</h4>

                                    <p>Bei mehreren Produkten unter SPCast wird ein Account pro Produkt empfohlen. Ist dies der Fall, kann die eingebaute Benutzerverwaltung im Kundencenter genutzt
                                        werden. Wenn dies keine
                                        Option ist, geben Sie hier die Kundennummer eines anderen Kunden an. Die hier angegebene Kundennummer hat vollen Zugriff auf die SPCast Verwaltung. Sie müssen
                                        in diesem Fall dem
                                        anderen Nutzer selbstständig den Link zur Produktverwaltung zukommen lassen.</p>

                                    <div class="form-group">
                                        <label for="InputAccessID"><strong>Kundennummer</strong></label>
                                        <input type="text" class="form-control" id="spSettingsAdditionalAccessID" aria-describedby="InputAccessID"
                                            placeholder="Geben Sie eine Kundennummer ein die vollen Zugriff auf die SPCast-Verwaltung erhalten soll." name="spSettingsAdditionalAccessID"
                                            value="{if $spSettingsAdditionalAccessID neq 0}{$spSettingsAdditionalAccessID}{/if}" />
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row col-xl-12">
                                        <input type="submit" class="btn btn-success btn-block" name="submit_settings_spcast" value="Einstellungen speichern" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!--end::Nav Content-->
            </div>
            <!--end::Body-->
        </div>
        <!--begin::Nav Panel Widget 1-->
    </div>
</div>