class BackboneTodoApp.Models.TodoItem extends Backbone.Model
  urlRoot: '/todos'
  defaults: ->
    description: 'Default description'
    status: 'incomplete'

  toggleStatus: ->
    console.log "#{@get 'status'}"
    if @get('status') == 'incomplete'
      @set {'status': 'complete'}
    else
      @set {'status': 'incomplete'}

    @save()
    console.log "#{@get 'status'}"

window.todoItem = new BackboneTodoApp.Models.TodoItem
  id: 1

window.todoItem.fetch()

window.todoItem.set
  description: 'Pick brokoly'

window.todoItem.save()

window.todoItem2 = new BackboneTodoApp.Models.TodoItem
window.todoItem2.on('change:status', -> console.log 'changed')

window.todoItem2.set
  id: 3
  status: 'complete'
  description: 'Do the Indoor Trainer'

window.todoItem2.save()
console.log window.todoItem2.toJSON()
