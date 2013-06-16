# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  $(".form-search").on("ajax:success", (e, data, status, xhr) ->
    $(".abc").append xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
  	$(".abc").append "<p>Sorry this no such Data</p>"

  #$('.form-search').keyup ->
  #	name = $('input[name]').val()
  #	id = $('input[id]').val()
  #	$.ajax('/friend/search',{
  #		#data: {name: name, id: id},
  #		success: ->
  #			alert "Success"
  #			$('.abc').append id
  #		error: ->
  #			alert "Error"
  #			$('.abc').append "Sorry No data"
  #	})


  $('a[data-remote]').click ->
  	id = $(this).attr("id")
  	name = $(this).text()
  	$.ajax("/friend/show_details", {
  		data: {id: id},
  		success: ->
  			#alert "Success"
  			$('.abc').append name
  		error: ->
  			#alert "Error"
  			$('.abc').append "Sorry unable to connect!"
  	})