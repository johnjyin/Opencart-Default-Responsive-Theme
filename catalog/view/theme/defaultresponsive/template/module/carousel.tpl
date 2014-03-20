<div id="carousel<?php echo $module; ?>">
  <ul class="jcarousel-skin-opencart">
    <?php foreach ($banners as $banner) { ?>
    <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
    <?php } ?>
  </ul>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?> ul').jcarousel({
	vertical: false,
	visible: <?php echo $limit; ?>,
	scroll: <?php echo $scroll; ?>
});

$('#carousel<?php echo $module; ?> ul').jcarousel({
        itemFirstOutCallback: {
            onBeforeAnimation: function(){

            },
            onAfterAnimation: function(){
                $(".jcarousel-prev").removeClass("jcarousel-prev-disabled");
                $(".jcarousel-prev").removeClass("jcarousel-prev-disabled-horizontal");
            }
        },
        itemLastOutCallback: {
            onBeforeAnimation: function(){

            },
            onAfterAnimation: function(){
                $(".jcarousel-next").removeClass("jcarousel-next-disabled");
                $(".jcarousel-next").removeClass("jcarousel-next-disabled-horizontal");
            }
        }
    });
//--></script>