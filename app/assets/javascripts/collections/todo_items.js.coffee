class BackboneTodoApp.Collections.TodoItems extends Backbone.Collection
  url: '/todos'
  model: BackboneTodoApp.Models.TodoItem

window.todoItems = new BackboneTodoApp.Collections.TodoItems()
console.log "incomming fetch"
console.log window.todoItems.fetch(
  success: ->
    console.log window.todoItems.length
    window.todoItems.forEach (todoItem) ->
      console.log todoItem.get('description')

)
console.log "fetch ended"

window.todoItems.add(window.todoItem2)
console.log "last model"
console.log window.todoItems.at(-1)

window.todoItems.on('event-name', ->
  alert('event-name happened!')
)
window.todoItems.trigger('event-name')
