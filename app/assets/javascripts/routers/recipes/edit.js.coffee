App.RecipesEditRoute = Ember.Route.extend
  events:
    save: ->
      @get('store').get('defaultTransaction').commit()
      @get('router').transitionTo('recipes.show', this.controller)
    cancel: ->
      @get('store').get('defaultTransaction').rollback()
      @get('router').transitionTo('recipes.show', this.controller)
