# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#//= require jquery
#//= require jquery_ujs
#//= require bootstrap-sprockets
#//= require knockout
#//= require underscore


$ ->
  console.log("%c%s", "color:red", "js lib list")
  console.log "%c%s", "color:#FF8800", _.VERSION  if _
  console.log $.fn.jquery  if $
  console.log ko.version if ko


_.delay(
  (e) ->
    console.log("%c%s", "color:blue", e)
,
  1000
,
  'logged later'
);


stuff = _.wrap(
  () ->
    return "++++++++++++++++++++++++++++"
    return
  (f) ->
    "before" + f() + "after"
)

console.log stuff()





