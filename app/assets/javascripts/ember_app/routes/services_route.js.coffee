SkiteEmber.ServicesRoute = Ember.Route.extend

  model: -> 
    @store.find('service')