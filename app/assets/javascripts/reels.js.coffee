# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$("#reel_start_date, #reel_end_date, #reel_DateMicrofilmCreated").datepicker()

# Get Year, Month, Day from reel_start_date and replace Day with LastDayOfMonth and set as #reel_end_date.
$ ->
	$("#reel_start_date").change( ->
		$("#reel_end_date").val($("#reel_start_date").val().replace(/-\d+$/, "-" + new Date($("#reel_start_date").val().match(/^\d+/)[0], $("#reel_start_date").val().match(/-\d+-/)[0].replace(/-/g,""), 0).getDate())).effect("highlight"))
