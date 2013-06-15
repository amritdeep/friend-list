# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $(".form-search").on("ajax:success", (e, data, status, xhr) ->
    #alert "Successs"
    $(".abc").append xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
  	#alert "Error"
    $(".abc").append "<p>Sorry this no such Data</p>"

