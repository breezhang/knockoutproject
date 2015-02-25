console.log(ver) if ver

console.log (@.is_user_running_ie)()


#===============
ko.components.register 'like-widget',
  viewModel: (params)->
    @chosenValue = params.value
    # Behaviors
    @like = ()=>
      @chosenValue('like')
    @dislike = () =>
      @chosenValue('dislike')
    return
  template: '<div class="like-or-dislike" data-bind="visible: !chosenValue()">
  <button data-bind="click: like">Like it</button>
   <button data-bind="click: dislike">Dislike it</button>
   </div>
   <div class="result" data-bind="visible: chosenValue">
   You <strong data-bind="text: chosenValue"></strong> it
   </div>'


Product = (@name, rating) ->
  #@name = name
  @userRating = ko.observable(rating or null)
  return

MyViewModel = ->
  @products = [
    new Product('Garlic bread')
    new Product('Pain au chocolat')
    new Product('Seagull spaghetti', 'like')
  ]
  return


$ ->
  ko.applyBindings(new MyViewModel, $("#4567890")[0]);


console.log("============")
#console.dir(foobar)
