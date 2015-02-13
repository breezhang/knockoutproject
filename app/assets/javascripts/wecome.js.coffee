# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


MyViewModel = () ->
  buyer:
    name: 'Franklin'
    credits: 250
  seller:
    name: 'Mario'
    credits: 5800


$ ->
  $.get("/fuck").done (d) ->
    $("#x").after(d)
    ko.applyBindings(new MyViewModel(),$("#list_main")[0]) if MyViewModel






