# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

read = ->
	$("#search_state_id").select2();
	$("#search_constituency_id").select2();
	$("#candidate_state_id").select2();
	$("#candidate_constituency_id").select2();
	$("#candidate_party").select2();

$(document).ready read
$(document).on "page:load", read
