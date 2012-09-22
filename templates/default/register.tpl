{include file="header.tpl" TITLE="Register"}

<h1>Register</h1>

<p>
Want to join the fun? Fill out the form below to register!
</p>

{if isset($MSG_WARN)}
    <span class="msg warn">{$MSG_WARN}</span>
    <br />
{elseif isset($MSG_FAIL)}
    <span class="msg fail">{$MSG_FAIL}</span>
    <br />
{/if}

<form method="POST" action="index.php?mod=Register">
    <table width="80%" align=center>
        <tr>
            <td valign=top>
                <label>Username</label>
                <input type="text" size="40" name="username"{if isset($USERNAME)} value="{$USERNAME}"{/if} zindex="1" />
                <label>Email</label>
                <input type="text" size="40" name="email"{if isset($EMAIL)} value="{$EMAIL}"{/if} zindex="2" />
            </td>
            <td valign=top>
                <label>Password</label>
                <input type="password" size="40" name="password" zindex="3" />

                <label>Verify Password</label>
                <input type="password" size="40" name="password2" zindex="4" />
            </td>
        </tr>
        <tr>
            <td colspan=2 align="center">
				<input type="hidden" name="verify" value="0" />
                <br />
                <input name="register" type="submit" value="Register" class="button" zindex="5" />
            </td>
        </tr>
                
    </table>
</form>

<script>
	$.run('ready', 'security.botCheck');
</script>
				
{include file="footer.tpl"}