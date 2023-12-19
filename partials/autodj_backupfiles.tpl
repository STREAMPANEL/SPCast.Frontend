<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_backupfiles'}
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_backupfiles_datatitle'}"
                    data-content="{lang key='sp_spcast_backupfiles_datacontent'}">
                </i>
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
        <input type="text" id="SPCustomSearchBox" class="form-control" placeholder="{lang key='sp_enter_your_search'}" />
        <table class="table table-striped table-bordered table-hover" id="SPDataTable">
            <thead>
                <tr>
                    <th>{lang key="sp_id"}</th>
                    <th>{lang key="sp_file_name"}</th>
                    <th>{lang key="sp_action"}</th>
                </tr>
            </thead>
            <tbody>
                {$get_autodj_backupfiles}
            </tbody>
        </table>
    </div>
</div>

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_backupfiles_upload'}
            </h3>
        </div>
    </div>
    <form id="SPCastUploadBackupfiles" method="post" action="" role="form" enctype="multipart/form-data">
        <div class="card-body">
            <div class="form-group">
                <label for="file"><strong>{lang key='sp_spcast_backupfiles_fileupload'}</strong></label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="file" name="file[]" accept=".mp3,.MP3" required="required" value="" multiple="multiple" data-fv-not-empty="true"
                        data-fv-file___extension="mp3,MP3" data-fv-file___max-size="1000000000" data-fv-file___max-total-size="1000000000" data-fv-file___type="audio/mpeg,audio/mp3"
                        data-fv-file___message="{lang key='sp_spcast_backupfiles_datafv_filemessage'}" />
                    <label class="custom-file-label" for="file">{lang key="sp_tac_filetoupload_choosefile"}</label>
                </div>
                <small id="fileHelpBlock" class="form-text text-muted" style="margin-top: 10px;">
                    {lang key='sp_spcast_backupfiles_filehelpblock'}:
                    <ul>
                        <li>{lang key='sp_spcast_backupfiles_filehelpblock_1'}</li>
                        <li>{lang key='sp_spcast_backupfiles_filehelpblock_2'}</li>
                        <li>{lang key='sp_spcast_backupfiles_filehelpblock_3'}</li>
                    </ul>
                </small>
            </div>
            <input class="btn btn-success btn-block" type="submit" name="submit_backupfile_upload" value="{lang key='sp_spcast_backupfiles_submit'}" />
        </div>
    </form>
</div>

<div class="card card-custom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                {lang key='sp_spcast_backupfiles_specialfiles'}Spezielle Dateien
                <i class="fa fa-info text-danger mr-5" data-toggle="sp_popover" data-trigger="click" title="{lang key='sp_spcast_note'}"
                    data-content="{lang key='sp_spcast_backupfiles_specialfiles_datacontent'}Wenn Sie eine der unteren Dateien ausgetauscht haben, müssen Sie den rechten Button 'Datei/en aktualisieren' einmal betätigen.">
                </i>
            </h3>
        </div>
    </div>
    <div class="card-body">
        <p>{lang key='sp_spcast_backupfiles_specialfiles_1'}</p>

        <h6>{lang key='sp_spcast_backupfiles_specialfiles_2'}</h6>
        <p>{lang key='sp_spcast_backupfiles_specialfiles_3'}</p>

        <hr>

        <h6>{lang key='sp_spcast_backupfiles_specialfiles_4'}</h6>
        <p>{lang key='sp_spcast_backupfiles_specialfiles_5'} <a href="https://assets.streampanel.net/spcast/error/media/offline_all.mp3" target="_blank"
                rel="noopener">{lang key='sp_spcast_backupfiles_specialfiles_loadexample'}</a></p>

        <h6>{lang key='sp_spcast_backupfiles_specialfiles_6'}</h6>
        <p>{lang key='sp_spcast_backupfiles_specialfiles_7'} <a href="https://assets.streampanel.net/spcast/error/media/offline_misc.mp3" target="_blank"
                rel="noopener">{lang key='sp_spcast_backupfiles_specialfiles_loadexample'}</a></p>

        <h6>{lang key='sp_spcast_backupfiles_specialfiles_8'}</h6>
        <p>{lang key='sp_spcast_backupfiles_specialfiles_9'} <a href="https://assets.streampanel.net/spcast/error/media/offline_transcoder.mp3" target="_blank"
                rel="noopener">{lang key='sp_spcast_backupfiles_specialfiles_loadexample'}</a></p>

        <h6>{lang key='sp_spcast_backupfiles_specialfiles_10'}</h6>
        <p>{lang key='sp_spcast_backupfiles_specialfiles_11'} <a href="https://assets.streampanel.net/spcast/error/media/error.mp3" target="_blank"
                rel="noopener">{lang key='sp_spcast_backupfiles_specialfiles_loadexample'}</a></p>
    </div>
</div>