{include file="header.tpl" TITLE="Account Settings"}

<h1>Account Settings</h1>

<p>Here you can manage your account details.</p>

{if isset($MSG)}
	<span class="msg">{$MSG}</span>
{/if}

<br />
<hr />
<strong>Avatar</strong>
<br /><br />
<form method="post" enctype="multipart/form-data">
	<input type="hidden" name="form" value="avatar">
	<label>Image</label>
	<input type="file" name="avatar" accept="image/*" />
	<br />
	<input name="change_avatar" type="submit" value="Change Avatar" class="button half" />
	<input name="remove_avatar" type="submit" value="Remove Avatar" class="button half vague" />
</form>
<br />
<hr />
<strong>Password</strong>
<br /><br />
<form method="post" action="index.php?mod=AccountSettings">
	<input type="hidden" name="form" value="password" />
	<label>Current Password</label>
	<input type="password" size="40" name="current_password" autocomplete="off" />

	<label>New Password</label>
	<input type="password" size="40" name="new_password" autocomplete="off" />

	<label>Verify New Password</label>
	<input type="password" size="40" name="new_password2" autocomplete="off" />

	<br />
	<input name="change_password" type="submit" value="Change Password" class="button" />

</form>

{include file="footer.tpl"}