# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$('.button_to').on 'submit', ->
		$('#cart').fadeOut('slow');
		$(this).find($('input').fadeOut('slow'));
