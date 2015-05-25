#= require_self
#= require ember_app/skite_ember

window.SkiteEmber = Ember.Application.create
  rootElement: '#ember-app'
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true
  LOG_VIEW_LOOKUPS: true
  LOG_ACTIVE_GENERATION: true
  resolver:
    Ember.DefaultResolver.extend
      resolveTemplate: (parsedName) ->
        parsedName.fullNameWithoutType = "app1/" + parsedName.fullNameWithoutType
        @_super parsedName

  # Resolver:
  #   Ember.DefaultResolver.extend
  #     resolveTemplate: (parsedName) ->
  #       resolvedTemplate = @_super(parsedName)
  #       return 'ember_app' + resolvedTemplate  if resolvedTemplate
  #       Ember.TEMPLATES["not_found"]



SkiteEmber.ApplicationAdapter = DS.FixtureAdapter.extend()
