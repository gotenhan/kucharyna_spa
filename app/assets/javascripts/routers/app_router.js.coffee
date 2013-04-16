App.Router.map( ->
  @route "home"
  @resource("recipes", -> )
  @resource("recipe", path: "/recipes/:id")
)

App.RecipesRoute = Ember.Route.extend
  model: -> App.Recipe.find()
