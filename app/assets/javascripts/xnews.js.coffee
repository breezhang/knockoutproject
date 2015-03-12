# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

#demo show knockoutjs maping plugin  make http rpc  :3

class cpoco
  constructor: (@line, @id, @msg, @state) ->



class dconsole
  constructor: ()->
    @count = ko.observable()
    @query = ko.observableArray([])
    @render = ko.observable()
    @showcasing = ko.observable()
    @showmsg = (a, b, c, d) =>
      @query.push(new cpoco(a, b, c, d))
    @clickfn = (d, e) =>
      el = $(e.currentTarget)
      if @count % 2 == 0
        el.addClass("info")
      @count++
    console.log("111111111111")

i = 1
n = () ->
  i++


$ ->
  console.log("jquery work")
  console.log("OK") if _.VERSION
  console.log("OK") if ko.version
  htmlconsole = new dconsole();
  htmlconsole = ko.mapping.fromJS({count: 1, query: [new cpoco(1, 2, 3, 4)], render: false, showcasing: false},
    htmlconsole)
  ko.applyBindings(htmlconsole, $("#3587")[0]);
  htmlconsole = ko.mapping.fromJS({
    count: 1, query: [new cpoco(3, 2, 3, 4), new cpoco(1, 2, 3, 4)], render: false, showcasing: false
  }, htmlconsole)
  htmlconsole.render(true)
