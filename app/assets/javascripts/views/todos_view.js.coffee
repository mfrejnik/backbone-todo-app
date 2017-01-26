class BackboneTodoApp.Views.TodosView extends Backbone.View
  initialize: ->
    @collection.on 'add', @addOne, @
    @collection.on 'reset', @addAll, @

  render: ->
    @addAll()

  addOne: (todoItem) ->
    todoView = new BackboneTodoApp.Views.TodoView model: todoItem
    todoView.render()
    @$el.append todoView.el

  addAll: ->
    _.each @collection.models, ((model) =>
      @addOne model
    ), @
    # @collection.fetch().done ->
    #   _.each that.collection.models, ((model) ->
    #     that.addOne model
    #   ), that
