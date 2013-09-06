# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("#batch_name").blur( ->
		$("#batch_name_short").val($("#batch_name").val().replace(/.*_/, "")).effect("highlight"))