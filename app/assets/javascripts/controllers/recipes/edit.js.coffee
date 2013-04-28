App.RecipesEditController = Ember.ObjectController.extend
  rawSteps: ''

  setupRawSteps: ->
    steps = @get('steps')
    if steps? && steps.length > 0
      @set('rawSteps', steps.join('\n'))

  rawStepsDidChange: ( ->
    rawSteps = @get('rawSteps')

    steps = rawSteps.split('\n')
    @set('steps', steps)
  ).observes('rawSteps')
