<?php
require_once("{$_SERVER['DOCUMENT_ROOT']}/config/router.php");

get('/', 'public/index.php');

get('/pokeball-builder', 'pokeball_builder/index.php');

get('/pokeball-builder/pokeball', 'pokeball_builder/pokeball.php');

get('/pokeball-builder/superball', 'pokeball_builder/superball.php');

get('/pokeball-builder/hyperball', 'pokeball_builder/hyperball.php');

get('/pokemon/type', 'public/index.php');

get('/admin/login', 'admin/login.php');

post('/admin/login', '/admin/login.php');

post('/admin/login', '/admin/controller.php');

get('/admin/inscription', 'admin/inscription.php');

post('/admin/inscription', 'admin/inscription.php');

post('/admin/inscription', '/admin/controller.php');

get('/admin', 'admin/index.php');

post('/admin', 'admin/index.php');

get('/admin/logout', 'admin/logout.php');

get('/$champion', 'page/champion_arene.php');

get('/admin/postez', 'admin/add.php');

post('/admin/postez', 'admin/controller.php');

get('/admin/$modifiez', 'admin/edit.php');
  
post('/admin/$modifiez', 'admin/controller.php');

post('/admin/$modifiez', 'admin/index.php');

get('/admin/$effacez', 'admin/controller.php');



any('/404','page/404.php');