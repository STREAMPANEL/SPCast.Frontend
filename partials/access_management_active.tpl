<input type="text" id="SPCustomSearchBox" class="form-control" placeholder="{lang key='sp_enter_your_search'}" />
<table class="table table-striped table-bordered table-hover" id="SPDataTable">
    <thead>
        <tr>
            <th>Moderator: ID</th>
            <th>Moderator: Bild</th>
            <th>Moderator: Name</th>
            <th>Moderator: Username</th>
            <th>Moderator: Passwort</th>
            <th>Verbindungsdaten</th>
            <th>{lang key="sp_action"}</th>
        </tr>
    </thead>
    <tbody>
        {$get_access_management_active}
    </tbody>
</table>