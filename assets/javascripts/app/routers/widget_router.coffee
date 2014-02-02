define (require, exports, module) ->

  Backbone = require('backbone')

  class WidgetRouter extends Backbone.Router

    routes:
      "": "widgets" # This is a default route.

    initialize: (options) ->
      @app = options.app

    widgets: ->
      @app.widgetView.render()

