# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $(".form-search").on("ajax:success", (e, data, status, xhr) ->
    $(".abc").html xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
  	$(".abc").html "<p>Sorry this no such Data</p>"


  $('a[id]').click (e)->
  	e.preventDefault()
  	id = $(this).attr('id')
  	
  	$.ajax '/friend/show_details', 
  		dataType: 'html'
  		data: {id: id}
  		success: (result) ->
  			$('.abc').html result

  		error: ->
  			alert "Error"
  			$('.abc').html "Unable to Connect"

