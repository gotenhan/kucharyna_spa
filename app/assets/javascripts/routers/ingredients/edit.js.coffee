App.IngredientsEditRoute = Ember.Route.extend
  events:
    save: ->
      @get('store.defaultTransaction').commit()
