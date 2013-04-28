App.IngredientsEditRoute = Ember.Route.extend
  events:
    save: ->
      @getPath('store.defaultTransaction').commit()
