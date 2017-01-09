class BackboneTodoApp.Views.TodosView extends Backbone.View
  render: ->
    html = "<li>#{@model.get('description')}</li>"
    $(@el).html(html)

window.todosView = new BackboneTodoApp.Views.TodosView(
  model: todoItem
)
window.todosView.render()
$(document).ready ->
  $('#app').html(window.todosView.el)
