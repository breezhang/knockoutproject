# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  console.log _

$ ->
  _.each [1, 2, 3, 4], (i)->
    console.log(i)

_.map
  name: '1'
  sex: 'femel',
  (k, v) ->
    console.log("%s   %s", k, v)

console.log _.find [1, 2, 3, 4], (i) ->
  i % 2 == 0

listplay = [
  {title: "12", author: "23", year: 111}
  {title: "12", author: "22", year: 222}
  {title: "13", author: "12", year: 222}
  {title: "122", author: "22", year: 222}
  {title: "21", author: "22", year: 222}
]

_.each (_.where listplay, {title: "12"}), (i)->
  console.log(i.year)


foobar = (g)->
  console.log("%s    %s", g, @name)

barfoo = _.bind foobar, {name: "google"}, "hi"

barfoo()

console.log("%c %s", "color:red", "1")

logerror = _.bind console.log, console, "%c %s", "color:red"

#loginfo = _.bind console.log ,console ,"%c %s","background:url(http://cdn.sstatic.net/stackoverflow/img/‌​sprites.png?v=6) "

logerror("error")

#loginfo("blue")
$ ->
  console.log("%c %s", window.god, "OK")
  console.log("%c%s",
    "background-image:url(data:image/png;base64," + window.god + ");background-repeat:no-repeat;border-style: solid; border-width: 1px;",
    "   11111")

