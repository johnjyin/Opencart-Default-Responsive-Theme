<!--- ---------------------------------------------------------------
--  Copyright             :  2014
--  Author                :  JOHN J YIN
--	Email				  :	 john.yin@ebizdesigner.com
--  Version               :  0.2
--  Date                  :  18/02/2014
--  Description           :  one extension of Opencart Default theme
--                           to support mobile, tablet
--                         
--                           based on Opencart(v1.5.6) header.tpl 
--                           
--
--  History               :
--      <author>   <time>      <version >       <desc>
--      JOHN	16/02/2014	0.1		initial
--		 - 		18/02/2014	0.2		test all common browsers    
--		-		20/02/2014	0.3		+ html5shiv.js, + normalize.css
--									update search input method
--		-		23/02/2014	0.4		+ css3-mediaqueries.js
--		-		-			-		+ X-UA-Compatible IE=edge,
--									so as IE9- working by responsive
--		-		-			-		update #topbar structure
--		-		-			-		update viewport meta
--------------------------------------------------------------- --->

<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no," />
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/defaultresponsive/stylesheet/normalize.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/defaultresponsive/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/defaultresponsive/stylesheet/responsive.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<!--[if lt IE 9]>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<script src="catalog/view/theme/defaultresponsive/js/html5shiv.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div id="header" class="clearafter">
 
<div id="topbar">
  <div class="wrapper clearafter">
  <?php echo $language; ?>
  <?php echo $currency; ?>
   <div id="welcome">
   <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links">
    <a href="<?php echo $wishlist; ?>" id="wishlist-total" class="icon-wishlist"><?php echo $text_wishlist; ?></a>
    <a href="<?php echo $account; ?>" id="link-account" class="icon-user"><?php echo $text_account; ?></a>
    <a href="<?php echo $shopping_cart; ?>" id="link-cart" class="icon-cart"><?php echo $text_shopping_cart; ?></a>
    <a href="<?php echo $checkout; ?>" id="link-checkout" class="icon-checkout"><?php echo $text_checkout; ?></a>
  </div>
  </div>
</div>


<div id="toppanel" class="wrapper clearafter">
  <?php if ($logo) { ?>
  <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
  <?php echo $cart; ?>
  <div id="search">
  <div id="search-inner">
        <div class="input-search-wrapper"><input type="text" name="search" class="input-search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" /></div>
 		<div class="button-search"></div> 
  </div>
  </div>
  <div class="clearbreak"></div>
</div>


<?php if ($categories) { ?>
<div id="topmenu" class="wrapper clearafter">
<div id="menu" class="clearafter">
  <ul class="menuclear">
    <?php foreach ($categories as $category) { ?>
    <li class="menuclear"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
  <a id="mainmenu-toggle" href="#" >Menu</a>
  <div class="clearbreak"> </div>
</div>
<div class="clearbreak"> </div>
</div>
<?php } ?>

<script type="text/javascript">
<!--
$(document).ready(function() {
			var pull 		= $("#menu #mainmenu-toggle"),
				menu 		= $("#menu>ul.menuclear"),
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
});
-->
</script> 


<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
</div>


