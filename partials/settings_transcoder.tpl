<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                    data-content="Ein Transkoder im Webradio-Bereich wandelt Audioinhalte in verschiedene Formate oder Bitraten um, um sicherzustellen, dass sie von einer breiten Palette von Geräten und Netzwerkverbindungen reibungslos gestreamt werden können. Dies ermöglicht eine optimale Audioqualität und eine nahtlose Wiedergabe für Zuhörer unabhängig von ihren Endgeräten oder Bandbreiten.">
                </i> Transkoder Einstellungen<br />
                <small>Sie finden hier alle Einstellungen zum SPCast-Transkoder.</small>
            </h3>
        </div>
    </div>
    <form method="post" action="{$smarty.server.PHP_SELF}?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=saved" role="form">
        <div class="card-body">

            <h3>Transkoder</h3>

            <p>Unser Transkoder ermöglicht es Ihnen, Audio-Streams in verschiedene Qualitätsstufen und Formate umzuwandeln, von hochwertigem 320 Kbits/MP3 bis hin zu spezialisierten Formaten wie 32
                Kbits/AAC. Sie haben die Freiheit, die Bitrate zu wählen, die am besten zu Ihrem Hörerlebnis passt.</p>

            <h4>256 Kbits / MP3</h4>

            <p>Sehr hohe Audioqualität. Viele Hörer werden kaum einen Unterschied zu 320 Kbits bemerken.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder256" value="1" {if $spSettingsTranscoder256} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 256 Kbits aktivieren?
                </label>
            </div>

            <h4>192 Kbits / MP3</h4>

            <p>Überdurchschnittliche Qualität. Ein ausgezeichneter Kompromiss, der noch immer ein sehr gutes Hörerlebnis bietet. Geeignet für die meisten Musikgenres.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder192" value="1" {if $spSettingsTranscoder192} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 192 Kbits aktivieren?
                </label>
            </div>

            <h4>128 Kbits / MP3</h4>

            <p>Oft die Standardqualität im Webradio-Bereich. Ein bewährter und weit verbreiteter Standard, der eine solide Klangqualität für eine Vielzahl von Inhalten bietet.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder128" value="1" {if $spSettingsTranscoder128} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 128 Kbits aktivieren?
                </label>
            </div>

            <h4>96 Kbits / MP3</h4>

            <p>Etwas unter dem Standard, bietet aber immer noch ein akzeptables Hörerlebnis, vor allem in Genres, die nicht so detailreich sind wie klassische Musik.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder96" value="1" {if $spSettingsTranscoder96} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 96 Kbits aktivieren?
                </label>
            </div>

            <h4>64 Kbits / Fraunhofer FDK AAC</h4>

            <p>Trotz der niedrigen Bitrate ist diese AAC-Qualität oft vergleichbar mit 128 Kbits/MP3. Das macht es besonders effizient, insbesondere für Genres, die nicht extrem detailreich sind.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder64" value="1" {if $spSettingsTranscoder64} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 64 Kbits aktivieren?
                </label>
            </div>

            <h4>48 Kbits / Fraunhofer FDK AAC</h4>

            <p>Bietet eine Qualität, die irgendwo zwischen 64 Kbits und 96 Kbits MP3 liegt. Geeignet für viele Anwendungen, insbesondere Sprache oder weniger komplexe Musik.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder48" value="1" {if $spSettingsTranscoder48} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 48 Kbits aktivieren?
                </label>
            </div>

            <h4>32 Kbits / Fraunhofer FDK AAC</h4>

            <p>Obwohl es die niedrigste angebotene Bitrate ist, kann diese AAC-Qualität immer noch besser sein als das MP3-Äquivalent. Ideal für Sprachübertragungen oder Hintergrundgeräusche.</p>

            <div class="controls checkbox">
                <label>
                    <input type="checkbox" name="spSettingsTranscoder32" value="1" {if $spSettingsTranscoder32} checked{/if} class="no-icheck toggle-switch-success" data-size="small"
                        data-on-text="{lang key='sp_yes'}" data-off-text="{lang key='sp_no'}" /> Transkoder für 32 Kbits aktivieren?
                </label>
            </div>

        </div>

        <div class="card-footer">
            <div class="row col-xl-12">
                <input type="submit" class="btn btn-success btn-block" name="submit_settings_transcoder" value="Einstellungen speichern" />
            </div>
        </div>
    </form>

</div>