class BackboneTodoApp.Views.TodosView extends Backbone.View
  render: ->
    html = "<ul><li><b>Description: </b>#{@model.get('description')}</li><li><b>Status: </b>#{@model.get('status')}</li></ul>"
    $(@el).html(html)

window.todosView = new BackboneTodoApp.Views.TodosView(
  model: todoItem2
)
window.todosView.render()
$(document).ready ->
  $('#app').html(window.todosView.el)
