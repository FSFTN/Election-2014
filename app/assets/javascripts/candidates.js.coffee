# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	constituencies = $("#search_constituency_id").html()
	console.log(constituencies)
	$("#search_state_id").change ->
		state = $("#search_state_id :selected").text
		options = $(constituencies).filter('optgroup[label="#{state}"').html
		if options
			$("#search_state_id").html(options)
		else
			$("#search_state_id").empty()

