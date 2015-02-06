#= require jquery
#= require jquery_ujs
#= require foundation
#= require turbolinks
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require skite_ember

# for more details see: http://emberjs.com/guides/application/
window.SkiteEmber = Ember.Application.create()

$ ->
  $(document).foundation()
