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
    ko.applyBindings(new MyViewModel(), $("#list_main")[0]) if MyViewModel



class Foo
  constructor: (name, age)->
    @name = ko.observable(name)
    @age = ko.observable(age)

$ ->
  ko.applyBindings(new Foo('bree', 'female'), $('#bree1')[0])

class  twelvecol
  constructor: () ->
    @row =ko.observable("row-fluid")
    @span = ko.observable("col-md-4 panel panel-default")

$ ->
  ko.applyBindings(new twelvecol() ,$("#bree2")[0])



class  pagelist
  constructor: () ->
    @list = ko.observableArray([1,2,3,4,5])
    @lhref = ko.observable('#')
    @pre = ko.observable('pre')
    @next = ko.observable('next')




$ ->
  ko.applyBindings(new pagelist() ,$("#bree3")[0])





