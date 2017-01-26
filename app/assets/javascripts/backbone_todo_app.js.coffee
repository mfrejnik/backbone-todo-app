window.BackboneTodoApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> alert 'Hello from Backbone!'

$(document).ready ->
  # BackboneTodoApp.initialize()
  TodosRouter = new BackboneTodoApp.Routers.TodoApp()
  TodosRouter.start()
