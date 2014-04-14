# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
read = ->
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
	
	constituencies1 = $("#candidate_constituency_id").html()
	console.log(constituencies1)
	$("#candidate_state_id").change ->
		console.log("test1**************************************")
		state1 = $("#candidate_state_id :selected").text()
		console.log(state1)
		options1 = $(constituencies1).filter("optgroup[label='#{state1}']").html()
		console.log(options1)
		if options1
			$("#candidate_constituency_id").html(options1)
		else
			$("#candidate_constituency_id").empty()

$(document).ready read
$(document).on "page:load", read
