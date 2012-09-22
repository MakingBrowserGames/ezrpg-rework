<?php
define('IN_EZRPG', true);
define('IN_ADMIN', true);

// needed for libs accessing the fs.
require_once '../init.php';

//Require admin rank
if ($player->rank < 5) {
    header('Location: ../index.php');
    exit;
}

$default_mod = 'Index';

$module_name = ( (isset($_GET['mod']) && ctype_alnum($_GET['mod'])) ? $_GET['mod'] : $default_mod );

//Admin header hook
$module_name = $hooks->run_hooks('admin_header', $module_name);

//Begin module
$module = ModuleFactory::adminFactory($db, $tpl, $config, $player, $module_name);
$module->start();

//Admin footer hook
$hooks->run_hooks('admin_footer', $module_name);
?>