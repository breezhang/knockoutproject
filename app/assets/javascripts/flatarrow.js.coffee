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


ko.bindingHandlers.foo =
  init: (element, valueAccessor, allBindings, viewModel, bindingContext)->
    console.log $(element)
    value = ko.unwrap(valueAccessor());
    console.log("%o ", viewModel)
  update: (el, va, a, v, b)->


class  foobar
  constructor: (@hehe) ->

$ ->
  ko.applyBindings(new foobar("hehe"), $("#chandle")[0])

#=====================================================


Foobars =
  p: [1, 2, 3, 4, 5]



console.log(Foobars)

$ ->
  ko.applyBindings(Foobars, $("#fortest001")[0])

#================================
#ko.components.register 'like-widget',
#  viewModel: (params) ->
#    # Data: value is either null, 'like', or 'dislike'
#    @chosenValue = params.value
#    # Behaviors
#    @like = (->
#      @chosenValue 'like'
#      return
#    ).bind(this)
#    @dislike = (->
#      @chosenValue 'dislike'
#      return
#    ).bind(this)
#    return
#  template: '<div class="like-or-dislike" data-bind="visible: !chosenValue()">            <button data-bind="click: like">Like it</button>            <button data-bind="click: dislike">Dislike it</button>        </div>        <div class="result" data-bind="visible: chosenValue">            You <strong data-bind="text: chosenValue"></strong> it        </div>'


#Product = (name, rating) ->
#  @name = name
#  @userRating = ko.observable(rating or null)
#  return
#
#MyViewModel = ->
#  @products = [
#    new Product('Garlic bread')
#    new Product('Pain au chocolat')
#    new Product('Seagull spaghetti', 'like')
#  ]
#  return
#
#
#$ ->
#  ko.applyBindings(new MyViewModel ,$("#4567890")[0]);
