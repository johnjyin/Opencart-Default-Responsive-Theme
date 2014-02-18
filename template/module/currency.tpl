<!--- ---------------------------------------------------------------
--  Copyright             :  2014
--  Author                :  JOHN J YIN
--	Email				  :	 john.yin@ebizdesigner.com
--  Version               :  0.2
--  Date                  :  18/02/2014
--  Description           :  one extension of Opencart Default theme
--                           to support mobile, tablet
--                         
--                           based on Opencart(v1.5.6) stylesheet.css 
--                           any changes would be marked
--
--  History               :
--      <author>   <time>      <version >       <desc>
--      JOHN	16/02/2014	0.2		initial
--		 - 		18/02/2014	0.2		test all common browsers 
--------------------------------------------------------------- --->

<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $currency_code) { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']; ?></b></a>
    <?php } else { ?>
    <a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']; ?></b></a>
    <?php } ?>
    <?php } else { ?>
    <?php if ($currency['symbol_left']) { ?>
    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['symbol_left']; ?></a>
    <?php } else { ?>
    <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().submit();"><?php echo $currency['symbol_right']; ?></a>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
<?php } ?>
