<input type="text" id="SPCustomSearchBox" class="form-control" placeholder="{lang key='sp_enter_your_search'}" />
<table class="table table-striped table-bordered table-hover" id="SPDataTable">
    <thead>
        <tr>
            <th>{lang key="sp_spcast_moderator_id"}</th>
            <th>{lang key="sp_spcast_moderator_image"}</th>
            <th>{lang key="sp_spcast_moderator_name"}</th>
            <th>{lang key="sp_spcast_moderator_username"}</th>
            <th>{lang key="sp_spcast_moderator_password"}</th>
            <th>{lang key="sp_spcast_moderator_connectiondetails"}</th>
            <th>{lang key="sp_action"}</th>
        </tr>
    </thead>
    <tbody>
        {$get_access_management_active}
    </tbody>
</table>