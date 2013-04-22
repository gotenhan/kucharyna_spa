App.RecipesIndexRoute = Ember.Route.extend
  model: -> App.Recipe.find()

