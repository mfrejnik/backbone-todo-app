class BackboneTodoApp.Models.TodoItem extends Backbone.Model
  urlRoot: '/todos'
  defaults: ->
    description: 'Default description'
    status: 'incomplete'

window.todoItem = new BackboneTodoApp.Models.TodoItem(
  description: 'Pick up milk'
  status: 'incomplete'
  id: 1
)

window.todoItem.set
  description: 'Pick brokoly'

window.todoItem2 = new BackboneTodoApp.Models.TodoItem(
  id: 2
)

window.todoItem2.on('change:cancelled', -> alert 'changed')

window.todoItem2.set(
  status: 'almost complete'
)

window.todoItem2.save()

console.log window.todoItem2.toJSON()
