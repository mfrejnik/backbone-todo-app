class BackboneTodoApp.Collections.TodoItems extends Backbone.Collection
  url: '/todos'
  model: BackboneTodoApp.Models.TodoItem

  initialize: ->
    @on('remove', @hideModel)

  hideModel: (model)->
    model.trigger 'hide'

  focusOnTodoItem: (id)->
    todoItem = new BackboneTodoApp.Models.TodoItem({ id: id })
    todoItemView = new BackboneTodoApp.Views.TodoView({ model: todoItem })
    todoItem.fetch()
    $('#app').append todoItemView.el
