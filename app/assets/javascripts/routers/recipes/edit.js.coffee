App.RecipesEditRoute = Ember.Route.extend
  events:
    save: ->
      @getPath('store.defaultTransaction').commit()
      @getPath('router').transitionTo('recipes.show', @controller)
    cancel: ->
      @getPath('store.defaultTransaction').rollback()
      @get('router').transitionTo('recipes.show', @controller)
