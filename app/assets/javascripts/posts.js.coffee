$(document).ready ->
	$("[data-toggle=collapse]").click ->
		$(@)
      .next()
      .find(".collapse")
      .collapse("toggle")
		$(@)
      .find("i")
      .toggleClass('icon-chevron-up')
      .toggleClass('icon-chevron-down')