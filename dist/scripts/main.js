(function(){"use strict";!function(){var a,b,c,d,e,f;for(c=void 0,e=function(){},d=["assert","clear","count","debug","dir","dirxml","error","exception","group","groupCollapsed","groupEnd","info","log","markTimeline","profile","profileEnd","table","time","timeEnd","timeStamp","trace","warn"],b=d.length,a=window.console=window.console||{},f=[];b--;)c=d[b],f.push(a[c]?void 0:a[c]=e);return f}(),$(document).ready(function(){return $(".logo").animateCSS("fadeInUp",{delay:800}),$(".hero-title").animateCSS("fadeInUp",{delay:1e3}),$(".hero-quote").animateCSS("fadeIn",{delay:1400}),$("#contactForm").validate({highlight:function(a){return $(a).parent().addClass("has-additional")},unhighlight:function(a){return $(a).parent().removeClass("has-additional")},errorPlacement:function(a,b){var c,d;return d=$('<div class="additional-content block-danger">'),c=$('<i class="icon-warning icon-left">').appendTo(d),a.appendTo(d),d.insertAfter(b)},messages:{message:"Please tells us what would you like our help with.",name:"Please tell us your name so we know what to call you.",email:{required:"Please tell us your email address so we can get in touch.",email:"That doesn't look like an email address."}}})})}).call(this);