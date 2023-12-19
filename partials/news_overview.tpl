<div id="xmlOutput" aria-live="assertive" aria-atomic="true"></div>

<div class="card card-custom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">{lang key='sp_spcast_news_overview'}</h3>
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
                        <li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">{lang key='sp_export_options'}</li>
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
                    <th>#{lang key="sp_id"}</th>
                    <th>{lang key="sp_tac_id"}</th>
                    <th>{lang key="sp_title"}</th>
                    <th>{lang key="sp_tac_day"}</th>
                    <th>{lang key="sp_tac_time"}</th>
                    <th>{lang key="sp_action"}</th>
                </tr>
            </thead>
            <tbody>
                <!-- Number 01 -->
                {if isset($spNewsURL)}
                    <tr>
                        {$days = ['Sonntag', 'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag']}
                        <td>{$spNewsID}</td>
                        <td>{$spNewsNumber}</td>
                        <td>{$spNewsTitle}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour}:{$spNewsStartMinute} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=1" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_1" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 02 -->
                {if isset($spNewsURL2)}
                    <tr>
                        <td>{$spNewsID2}</td>
                        <td>{$spNewsNumber2}</td>
                        <td>{$spNewsTitle2}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay2) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour2}:{$spNewsStartMinute2} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=2" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_2" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 03 -->
                {if isset($spNewsURL3)}
                    <tr>
                        <td>{$spNewsID3}</td>
                        <td>{$spNewsNumber3}</td>
                        <td>{$spNewsTitle3}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay3) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour3}:{$spNewsStartMinute3} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=3" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="deletetac01" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 04 -->
                {if isset($spNewsURL4)}
                    <tr>
                        <td>{$spNewsID4}</td>
                        <td>{$spNewsNumber4}</td>
                        <td>{$spNewsTitle4}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay4) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour4}:{$spNewsStartMinute4} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=4" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_4" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 05 -->
                {if isset($spNewsURL5)}
                    <tr>
                        <td>{$spNewsID5}</td>
                        <td>{$spNewsNumber5}</td>
                        <td>{$spNewsTitle5}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay5) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour5}:{$spNewsStartMinute5} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=5" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_5" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 06 -->
                {if isset($spNewsURL6)}
                    <tr>
                        <td>{$spNewsID6}</td>
                        <td>{$spNewsNumber6}</td>
                        <td>{$spNewsTitle6}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay6) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour6}:{$spNewsStartMinute6} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=6" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_6" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 07 -->
                {if isset($spNewsURL7)}
                    <tr>
                        <td>{$spNewsID7}</td>
                        <td>{$spNewsNumber7}</td>
                        <td>{$spNewsTitle7}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay7) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour7}:{$spNewsStartMinute7} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=7" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_7" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 08 -->
                {if isset($spNewsURL8)}
                    <tr>
                        <td>{$spNewsID8}</td>
                        <td>{$spNewsNumber8}</td>
                        <td>{$spNewsTitle8}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay8) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour8}:{$spNewsStartMinute8} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=8" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_8" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 09 -->
                {if isset($spNewsURL9)}
                    <tr>
                        <td>{$spNewsID9}</td>
                        <td>{$spNewsNumber9}</td>
                        <td>{$spNewsTitle9}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay9) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour9}:{$spNewsStartMinute9} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=9" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_9" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}
                <!-- Number 10 -->
                {if isset($spNewsURL10)}
                    <tr>
                        <td>{$spNewsID10}</td>
                        <td>{$spNewsNumber10}</td>
                        <td>{$spNewsTitle10}</td>
                        <td>
                            {$result = []}
                            {foreach explode(',', $spNewsDay10) as $day} {$result[] = $days[$day]} {/foreach}
                            {$result|implode:", "}
                        </td>
                        <td>{$spNewsStartHour10}:{$spNewsStartMinute10} Uhr</td>
                        <td>
                            <a href="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=202&spNewsNumber=10" class="btn btn-primary btn-sm btn-block"
                                role="button">{lang key='sp_spcast_news_edit'}</a>
                            <form onsubmit="setTimeout('parent.location.reload()',100); return true;" method="post" action="index.php?m=SPStreamserverManagement&spserviceid={$spServiceID}&spsmpageid=204"
                                role="form">
                                <input class="btn btn-danger btn-sm btn-block" type="submit" name="news_delete_10" value="{lang key='sp_spcast_news_delete'}" />
                            </form>
                        </td>
                    </tr>
                {/if}

            </tbody>
        </table>
    </div>
</div>