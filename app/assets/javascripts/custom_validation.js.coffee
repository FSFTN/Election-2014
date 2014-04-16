$(document).ready ->
  presence = (name, id, failMessage, successMessage= " " ) ->
    name = new LiveValidation id, {validMessage: successMessage, wait: 500}
    name.add Validate.Presence, { failureMessage: failMessage} 

  acceptance = (name, id, failMessage, successMessage= " " ) ->
    name = new LiveValidation id, {validMessage: successMessage, wait: 500}
    name.add Validate.Acceptance, { failureMessage: failMessage} 

  numericality = (name, id, failMessage, successMessage= " " ) ->
    name = new LiveValidation id, {validMessage: successMessage, wait: 500}
    name.add Validate.Numericality, { failureMessage: failMessage} 

#  Form validation for create session
#  syntax

#  livevalidation_method("anyname", "id of the element", "failure message", "success message")

#  Live validation available methods
#  1. Presence
#  2. Format
#  3. Numericality
#  4. Length
#  5. Inclusion
#  6. Exclusion
#  7. Acceptance
#  8. Confirmation
#  9. Email

 # presence("topic", "sessionTopic", "please enter session topic", "Your are good to ")

  #presence("agenda", "sessionAgenda", "please enter agenda")

 # presence("category", "sessionCategory", "please select category")

#  presence("start", "startDate", "please select Start Date")

 # presence("startTime", "startTime", "please select Start Time")

#  presence("endDate", "endDate", "please select End date")

 # presence("slot", "slotAvailable", "please enter available slot ")

#  presence("recurrence", "sessionRecurrence", "please enter session Recurrence")

 # presence("duration", "conference_duration", "please select session duration")

#  numericality("sessionCost", "sessionCost", "please enter valid amount")

 # acceptance("sessionTerms", "sessionTerms", "please accept the terms and conditions")
