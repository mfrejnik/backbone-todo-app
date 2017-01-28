class BackboneTodoApp.Routers.TodoApp extends Backbone.Router
  routes:
    '': 'index'
    'todos/:id': 'show'

  initialize: ->
    @todoItems = new BackboneTodoApp.Collections.TodoItems()
    @todosView = new BackboneTodoApp.Views.TodosView({ collection: @todoItems })
    @todosView.render()

  index: ->
    $('#app').html @todosView.el
    @todoItems.fetch()

  show: (id) ->
    this.todoItems.focusOnTodoItem(id)

  start: ->
    Backbone.history.start({ pushState: true })

