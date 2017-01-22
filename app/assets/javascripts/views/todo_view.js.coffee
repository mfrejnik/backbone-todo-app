class BackboneTodoApp.Views.TodoView extends Backbone.View
  className: 'todo'
  id: 'todo-view'
  events:
    'click h3': 'alertStatus'
    'change input': 'toggleStatus'
  template: _.template '<h3 class="<%= status %>">
                          <input type=checkbox
                            <% if (status == "complete") print("checked") %> />
                          <%= description %>
                        </h3>'
  initialize: ->
    @model.on('change', @render, @)
    @model.on('destroy', @remove, @)

  render: ->
    attributes = @model.toJSON()
    @$el.html(@template(attributes))

  remove: ->
    @$el.remove()

  toggleStatus: ->
    @model.toggleStatus()

  alertStatus: ->
    console.log 'You clicked h3'
