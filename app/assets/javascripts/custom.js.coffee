$ ->
  setTimeout (->
    $(".alert-danger").fadeOut 800
  ), 1000

$(document).ready ->
  #$('.navbar-brand').click ->
    #$('#search').prop('disabled','true')
    #alert 'afasd'
  #$("#search").on "change", ->
    #a = $('#search_state_id :selected').text()
    #console.log "#{a} 88888888888"
    #if a is "Select a State"
      #$("#search").prop("disabled",true)
    #else
      #$("#search").prop("disabled",false)

    #$('#search_state_id').on "change", ->
       #s=$('#search_constituency_id :selected').text()
       #alert(s)
      #$('#search').removeClass("disabled")
  
