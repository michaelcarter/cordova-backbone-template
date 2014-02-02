define (require, exports, module) ->

  Backbone = require('backbone')
  Widget   = require('models/widget')

  class WidgetView extends Backbone.View

    el: "#app"

    hammerEvents:
      "tap button.removeWidget": "removeWidget"
      "tap button.addWidget": "addWidget"

    initialize: ->
      @listenTo @collection, 'add remove', @render

    render: ->
      widgetCount = @collection.length

      # You'd probably use some sort of templating system in a production application, but this just a sample.
      @$el.html "
        <h1>Backbone has loaded</h1>
        <p>Read the backbone docs at <a href='http://backbonejs.org/'>backbonejs.org</a> and begin creating your app.</p>
        <p>You have #{widgetCount} widget#{if widgetCount isnt 1 then 's' else ''}.
        <p><button class='addWidget'>Add Widget</button> <button class='removeWidget'>Remove Widget</button></p>
      "

    addWidget: ->
      @collection.add
        addedAt: new Date().toString()

    removeWidget: ->
      @collection.pop()