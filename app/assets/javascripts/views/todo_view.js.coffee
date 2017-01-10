class BackboneTodoApp.Views.TodosView extends Backbone.View
  tagName: 'ul'
  className: 'todo'
  id: 'todo-view'
  events:
    'click li': 'alertStatus'
  template: _.template '<h3><strong>Description: </strong><%= description %></h3>
                        <h3><strong>Status: </strong><%= status %></h3>'
  render: ->
    attributes = @model.toJSON()
    @$el.html(@template(attributes))

  alertStatus: ->
    console.log 'You clicked li'

window.todosView = new BackboneTodoApp.Views.TodosView(
  model: todoItem2
)
window.todosView.render()
$(document).ready ->
  $('#app').html(window.todosView.el)
