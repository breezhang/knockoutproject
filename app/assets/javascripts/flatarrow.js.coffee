# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

@.is_user_running_ie = ->
  11220

console.log(ver) if ver



class kfoo
  constructor: (@msg)->
  thin: ->console.log  @msg + "  thin"
  flat: =>console.log  @msg + "  flat"

fn = (callback)-> callback()

x= new kfoo("hello kitty")

fn(x.thin)
fn(x.flat)
#========================click=====================
class  clickdemo
  constructor: (@click_number) ->
    @click_number = ko.observable(0)
    @total = 0
  clickhandle: =>
    @click_number(@total++)
    console.log(@total)

$ ->
  ko.applyBindings(new clickdemo(0) ,$("#bun001")[0])
#================event==============================
class  mouseinout
  enableDetails: (d,e)=>
   dome = $(e.target)
   dome.addClass("active")

  disableDetails: (d,e)=>
    dome = $(e.target)
    dome.removeClass("active") if dome.hasClass("active")

$ ->
  ko.applyBindings(new mouseinout() ,$("#event_002")[0])

#class submitmsg
#  doSomething :(fe) =>
#    console.log($(fe))
#    console.log($(fe).serialize())
#
#
#$ ->
#  ko.applyBindings(new submitmsg(),$("#submit_002")[0])