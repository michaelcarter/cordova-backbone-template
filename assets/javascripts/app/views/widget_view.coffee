define (require, exports, module) ->

  Backbone     = require('backbone')
  WidgetRouter = require('routers/widget_router')

  class WidgetView extends Backbone.View

    initialize: ->
      Backbone.history.start()
      @render()

    render: ->