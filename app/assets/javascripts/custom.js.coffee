$ ->
  setTimeout (->
    $(".alert-danger").fadeOut 800
  ), 1000

$(document).ready ->
  #$("#search").on "change", ->
    #a = $('#search_state_id :selected').text()
    #console.log "#{a} 88888888888"
    #if a is "Select a State"
      #$("#search").prop("disabled",true)
    #else
      #$("#search").prop("disabled",false)

    $('#search_constituency_id').on "change", ->
      $('#search').removeClass("disabled")
  
