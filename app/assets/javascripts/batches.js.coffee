# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("#batch_name").blur( ->
		$("#batch_name_short").val($("#batch_name").val().replace(/.*_/, "")).effect("highlight"))

$ ->
	$("#batch_embargo_end_date, #batch_date_beg_qc, #batch_date_ucr_recvd, #batch_date_UCR_LC").datepicker()
