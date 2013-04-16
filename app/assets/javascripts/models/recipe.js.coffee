App.Recipe = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  steps: DS.attr 'array'
  ingredients: DS.hasMany(App.Ingredient, embedded: "always")
