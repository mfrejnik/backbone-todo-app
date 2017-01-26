class BackboneTodoApp.Collections.TodoItems extends Backbone.Collection
  url: '/todos'
  model: BackboneTodoApp.Models.TodoItem

  initialize: ->
    @on('remove', @hideModel)

  hideModel: (model)->
    model.trigger 'hide'
