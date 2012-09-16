<?php
defined('IN_EZRPG') or exit;

$hooks->add_hook('header', 'header_msg', 1);

function hook_header_msg(&$db, $config, &$tpl, &$player, $args = 0) {
    
    if (isset($_GET['msg']) && is_string($_GET['msg'])) {
        $_msg = trim(stripslashes($_GET['msg']));
        if (!empty($_msg))
            $tpl->assign('GET_MSG', $_msg);
    }
    
    return $args;
}
?>