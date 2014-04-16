$("#search_state_id").change(function() {

  if ($("#search_state_id option:selected").text()== "Select a State" || $("#search_constituency_id option:selected").text()== "Select a Constituency")
    {
      $('input[type="submit"]').attr('disabled','disabled')
    }
    else
      {
        $('input[type="submit"]').removeAttr('disabled');
      }
})
