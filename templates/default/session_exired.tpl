{include file="header.tpl" TITLE="Session Expired"}
<h1>Your session has expired.</h1>

<p>Please entered your password to continue, or you can <a href="index.php?mod=Logout">Logout</a>.</p>

{if isset($MSG)}
	<span class="msg">{$MSG}</span>
{/if}
<form method="post">
	<label>Password</label>
	<input type="password" name="password" />
	<br />
	<input type="submit" class="button" value="Continue" />
</form>

{include file="footer.tpl"}
