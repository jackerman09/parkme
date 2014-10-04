#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require app
#= require foundation
#= require_tree .

# for more details see: http://emberjs.com/guides/application/
console.log('in app.js.coffee')

window.App = Ember.Application.create({
	rootElement: "#ember-div"
	})

$ ->
  $(document).foundation()
