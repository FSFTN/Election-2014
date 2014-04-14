# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	constituencies = $("#search_constituency_id").html()
	console.log(constituencies)
	$("#search_state_id").change ->
		console.log("test**************************************")
		state = $("#search_state_id :selected").text()
		console.log(state)
		options = $(constituencies).filter("optgroup[label='#{state}']").html()
		console.log(options)
		if options
			$("#search_constituency_id").html(options)
		else
			$("#search_constituency_id").empty()

