define (require, exports, module) ->

  Backbone = require('backbone')
  WidgetRouter = require('routers/widget_router')

  class WidgetView extends Backbone.View

    el: "#app"

    initialize: ->
      Backbone.history.start()
      @render()

    render: ->
      @$el.html("<h1>Backbone has loaded</h1> <p>Read the backbone docs at <a href='http://backbonejs.org/'>backbonejs.org</a> and begin creating your app.</p>")
      @