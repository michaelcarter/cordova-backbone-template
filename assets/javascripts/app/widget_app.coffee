define (require, exports, module) ->

  # Makes touch events in Backbone easy, see: https://github.com/wookiehangover/backbone.hammer
  require('backbone-hammer')

  _            = require('underscore')
  $            = require('jquery')
  Backbone     = require('backbone')
  WidgetRouter = require('routers/widget_router')
  Widgets      = require('collections/widgets')
  WidgetView   = require('views/widget_view')

  ###
    We'll use this file to boot up our application. It's extending Backbone.View, but
    isn't really used as a view at all. You'll want to replace all Backbone code in
    this project with your own, it only exists to show you how requiring various
    components in the application work together and it not intended to be an example
    of a well structured or well built application, that's up to you, as it's not
    something Backbone really prescribes.
  ###

  class WidgetApp extends Backbone.View

    initialize: ->
      # Create our routers
      @router = new WidgetRouter
        app: @

      # Create our collections
      @widgets = new Widgets

      # Create our views
      @widgetView = new WidgetView
        collection: @widgets

      # Start backbone history
      Backbone.history.start()
