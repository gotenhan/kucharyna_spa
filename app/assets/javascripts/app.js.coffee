@App = Ember.Application.create()

App.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.extend
    namespace: 'api'

DS.RESTAdapter.registerTransform 'array',
  deserialize: (serialized) -> serialized
  serialize: (deserialized) -> deserialized
