$(document).ready(function(){

	$("[data-toggle=collapse]").click(function(){
		$(this).next().find(".collapse").collapse('toggle');
		$(this).find("i").toggleClass('icon-chevron-up').toggleClass('icon-chevron-down');
	});

});