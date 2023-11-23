{if $smarty.session.adminid>0}
    <!-- START Debug Admin -->
    <pre>Admin Debug
            {var_dump($smarty.post)}
        </pre>
    <br>
    <!-- END Debug Admin -->
{/if}