class BackboneTodoApp.Collections.TodoItems extends Backbone.Collection
  url: '/todos'
  model: BackboneTodoApp.Models.TodoItem

window.todoItems = new BackboneTodoApp.Collections.TodoItems()
