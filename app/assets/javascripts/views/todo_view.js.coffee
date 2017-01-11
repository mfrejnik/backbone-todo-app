class BackboneTodoApp.Views.TodosView extends Backbone.View
  tagName: 'ul'
  className: 'todo'
  id: 'todo-view'
  events:
    'click h3': 'alertStatus'
  template: _.template '<h3>
                          <input type=checkbox
                            <% if (status == "complete") print("checked") %> />
                          <%= description %>
                        </h3>'
  render: ->
    attributes = @model.toJSON()
    @$el.html(@template(attributes))

  alertStatus: ->
    console.log 'You clicked h3'

window.todosView = new BackboneTodoApp.Views.TodosView(
  model: todoItem2
)
window.todosView.render()
$(document).ready ->
  $('#app').html(window.todosView.el)
