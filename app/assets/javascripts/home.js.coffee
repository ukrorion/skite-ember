#= require_self
#= require ember_app/skite_ember

window.SkiteEmber = Ember.Application.create
  rootElement: '#ember-app'
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  LOG_ACTIVE_GENERATION: true
  # Resolver:
  #   Ember.DefaultResolver.extend
  #     resolveTemplate: (parsedName) ->
  #       return Ember.TEMPLATES['ember_app/' +parsedName.fullNameWithoutType]  if parsedName
  #       Ember.TEMPLATES["not_found"]



SkiteEmber.ApplicationAdapter = DS.FixtureAdapter.extend()
