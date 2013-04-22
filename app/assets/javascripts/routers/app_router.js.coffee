App.Router.map( ->
  @route "home"
  @resource "recipes", ->
    @route 'index', path: '/'
    @route 'new', path: '/new'
    @route 'show', path: '/:recipe_id'
    @route 'edit', path: '/:recipe_id/edit'
)
