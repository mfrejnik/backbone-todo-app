class BackboneTodoApp.Models.TodoItem extends Backbone.Model
  urlRoot: '/todos'
  defaults: ->
    description: 'Default description'
    status: 'incomplete'

  toggleStatus: ->
    if @get('status') == 'incomplete'
      @set {'status': 'complete'}
    else
      @set {'status': 'incomplete'}

    @save()
