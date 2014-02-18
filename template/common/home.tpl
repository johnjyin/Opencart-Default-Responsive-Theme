<!--- ---------------------------------------------------------------
--  Copyright             :  2014
--  Author                :  JOHN J YIN
--	Email				  :	 john.yin@ebizdesigner.com
--  Version               :  0.1
--  Date                  :  16/02/2014
--  Description           :  one extension of Opencart Default theme
--                           to support mobile, tablet
--                         
--                           based on Opencart(v1.5.6) home.tpl 
--                           - insert .clearbreak div
--
--  History               :
--      <author>   <time>      <version >       <desc>
--      JOHN      16/02/2014       0.1          
--------------------------------------------------------------- --->
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="wrapper"><?php echo $content_top; ?>
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
