App.RecipesEditRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.setupRawSteps()

  events:
    save: ->
      @get('store.defaultTransaction').commit()
      @get('router').transitionTo('recipes.show', @controller)
    cancel: ->
      @get('store.defaultTransaction').rollback()
      @get('router').transitionTo('recipes.show', @controller)
    addIngredient: ->
      @get('context.ingredients').addObject(App.Ingredient.createRecord())
    removeIngredient: (ingredient) ->
      @get('context.ingredients').removeObject(ingredient)
