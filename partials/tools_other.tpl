<!-- AutoDJ Source Password -->
{capture assign=autodjSourcePasswordURL}{$systemsslurl}modules/addons/SPStreamserverManagement/action.php?url=https://{$spHostname}:9000/sp/secure/autodj_source_password.txt.php&username={$spSecurityUsername}&password={$spSecurityPassword}{/capture}
{assign var=autodjSourcePassword value=file_get_contents($autodjSourcePasswordURL)}
{$autodjInitialSourceOutput}

<div class="card card-custom sp-margin-bottom">
    <div class="card-header border-0 sp-bg-dark">
        <div class="card-title">
            <h3 class="card-label text-white">
                Sonstiges<br />
                <small>Alles was bisher keine Kategorie hat oder auf Wunsch anderer Nutzer entstanden ist.</small>
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
        <h3>Zuhörerausgabe bei aktiven AutoDJ</h3>
        <p>Aktive Ausgabe ist nur vorhanden wenn der AutoDJ läuft.</p>
        <p><strong>Verweis:</strong> <a href="https://{$spHostname}:9000/sp/scripts/cache/autodj_mountpoints.html" target="_blank"
                rel="noopener">https://{$spHostname}:9000/sp/scripts/cache/autodj_mountpoints.html</a></p>

        <hr>

        <h3>Zuhörerausgabe bei nicht aktiven AutoDJ</h3>
        <p>Aktive Ausgabe ist nur vorhanden wenn der AutoDJ nicht läuft.</p>
        <p><strong>Verweis:</strong> <a href="https://{$spHostname}:9000/sp/scripts/cache/dj_mountpoints.html" target="_blank"
                rel="noopener">https://{$spHostname}:9000/sp/scripts/cache/dj_mountpoints.html</a></p>

        <hr>

        <h3>AutoDJ starten / stoppen (Skript)</h3>
        <p>Ein Skript, dass Sie direkt für Ihr Team oder Ihre Webseite verwenden können. Nutzer mit Zugriff auf dieses Skript können den Auto-DJ nach Bedarf ohne Administrationszugang starten oder
            stoppen.</p>
        <p><strong>URL:</strong> <a href="https://{$spHostname}:9000/sp/secure/autodj_manage.php" target="_blank" rel="noopener">https://{$spHostname}:9000/sp/secure/autodj_manage.php</a><br />
            <strong>Username:</strong> autodj<br />
            <strong>Passwort:</strong> {$autodjSourcePasswordOutput|replace:' ':''|trim}
        </p>

        <hr>
    </div>
</div>

URL: thttps://music4all.spcast.eu:9000/sp/secure/autodj_manage.php
Username: autodj
Passwort: gtJwJnWJ1j9NebKM