<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                    data-content="{lang key='sp_spcast_settings_transcoder_datacontent'}">
                </i> {lang key='sp_spcast_settings_transcoder'}<br />
                <small>{lang key='sp_spcast_settings_transcoder_desc'}</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <h3>{lang key='sp_spcast_transcoder'}</h3>

            <p>{lang key='sp_spcast_settings_transcoder_desc2'}</p>

            <h4>256 Kbits / MP3</h4>

            <p>{lang key='sp_spcast_settings_transcoder_256_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder256" value="1" {if $spSettingsTranscoder256} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_256_activate'}
                </label>
            </div>

            <h4>192 Kbits / MP3</h4>

            <p>{lang key='sp_spcast_settings_transcoder_192_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder192" value="1" {if $spSettingsTranscoder192} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_192_activate'}
                </label>
            </div>

            <h4>128 Kbits / MP3</h4>

            <p>{lang key='sp_spcast_settings_transcoder_128_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder128" value="1" {if $spSettingsTranscoder128} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_128_activate'}
                </label>
            </div>

            <h4>96 Kbits / MP3</h4>

            <p>{lang key='sp_spcast_settings_transcoder_96_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder96" value="1" {if $spSettingsTranscoder96} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_96_activate'}
                </label>
            </div>

            <h4>64 Kbits / Fraunhofer FDK AAC</h4>

            <p>{lang key='sp_spcast_settings_transcoder_64_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder64" value="1" {if $spSettingsTranscoder64} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_64_activate'}
                </label>
            </div>

            <h4>48 Kbits / Fraunhofer FDK AAC</h4>

            <p>{lang key='sp_spcast_settings_transcoder_48_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder48" value="1" {if $spSettingsTranscoder48} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_48_activate'}
                </label>
            </div>

            <h4>32 Kbits / Fraunhofer FDK AAC</h4>

            <p>{lang key='sp_spcast_settings_transcoder_32_desc'}</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder32" value="1" {if $spSettingsTranscoder32} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> {lang key='sp_spcast_settings_transcoder_32_activate'}
                </label>
            </div>

        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_transcoder" value="{lang key='sp_spcast_settings_save'}" />
            </div>
        </div>
    </form>

</div>