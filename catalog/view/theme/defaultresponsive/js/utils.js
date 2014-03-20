/* ---------------------------------------------------------------
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
--------------------------------------------------------------- */

$(document).ready( 
	function() {
		var pull 		= $("#menu #mainmenu-toggle");
			menu 		= $("#menu>ul.munuclear");
			menuHeight	= menu.height();

		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});

		$(window).resize(function(){
        	var w = $(window).width();
        	if(w > 320 && menu.is(':hidden')) {
        		menu.removeAttr('display');
        	}
    	});
	}

	// Reference: https://core.trac.wordpress.org/ticket/23817
	// Reference: https://core.trac.wordpress.org/changeset/24619
	// WebKit excludes the width of the vertical scrollbar when applying the CSS "@media screen and (max-width: ...)" 
	// and matches $(window).width(). 
	// Firefox and IE > 8 include the scrollbar width, so after the jQuery normalization 
	// $(window).width() is 884px but window.innerWidth is 900px. 
	// (using window.innerWidth also excludes IE < 9) 
	viewPointWidth = function() {
		return navigator.userAgent.indexOf('AppleWebKit/') > -1 ? $(window).width() : window.innerWidth; 
	}
);


