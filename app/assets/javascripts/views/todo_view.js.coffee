class BackboneTodoApp.Views.TodosView extends Backbone.View
  tagName: 'ul'
  className: 'todo'
  id: 'todo-view'
  render: ->
    html = "<li><strong>Description: </strong>#{@model.get('description')}</li><li><strong>Status: </strong>#{@model.get('status')}</li>"
    @$el.html(html)

window.todosView = new BackboneTodoApp.Views.TodosView(
  model: todoItem2
)
window.todosView.render()
$(document).ready ->
  $('#app').html(window.todosView.el)
