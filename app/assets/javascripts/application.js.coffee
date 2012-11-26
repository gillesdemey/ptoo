# // This is a manifest file that'll be compiled into application.js, which will include all the files
# // listed below.
# //
# // Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# // or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
# //
# // It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# // the compiled file.
# //
# // WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# // GO AFTER THE REQUIRES BELOW.
# //
# //= require jquery
# //= require jquery_ujs
# //= require bootstrap.min
# //= require modernizr

$(document).ready ->
	$(".glass").addClass("animated")

	$(".set-dark").click ->
		$("body").addClass("dark")
		$(".set-light").removeClass("active")
		$(@).addClass("active")

	$(".set-light").click ->
		$("body").removeClass("dark")
		$(".set-dark").removeClass("active")
		$(@).addClass("active")

animateBg (elem) ->
	# get current position
	posBg = getBackgroundPosition(elem)
	posY = posBg[0]
	posX = posBg[1]

	elem.animate
		'background-position-x': "100%",
		'background-position-y': "100%",
		100000,
		'linear'

getBackgroundPosition(elem) ->
	backgroundPos = $(elem).css('backgroundPosition').split(" ")
	# now contains an array like ["0%", "50px"]

# window.onscroll = function() {
# 		var speed = 0.7;
# 		$(".glass").css({
# 			'height': 280 - (window.pageYOffset / speed)
# 		});
# };