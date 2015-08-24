# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require jquery
#= require jquery_ujs
#= require bootstrap.min
#= require turbolinks
#= require baidu_ueditor
#= require ueditor_custom_config
#= require admin/jquery.uploadify.min

$ -> 
  $('.close').click ->
  	alert($(this).data('id'))
  	$.post "/product_pic/#{id}"