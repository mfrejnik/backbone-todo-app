class BackboneTodoApp.Models.TodoItem extends Backbone.Model

window.todoItem = new BackboneTodoApp.Models.TodoItem(
  description: 'Pick up milk'
  status: 'incomplete'
  id: 1
)

window.todoItem.set
  description: 'Pick brokoly'
