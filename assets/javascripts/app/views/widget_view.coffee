define (require, exports, module) ->

  Backbone = require('backbone')
  Widget   = require('models/widget')

  class WidgetView extends Backbone.View

    el: "#app"

    hammerEvents:
      "touch button.removeWidget" : "removeWidget"
      "touch button.addWidget"    : "addWidget"

    initialize: ->
      @listenTo @collection, 'add remove', @updateWidgetCount

    render: ->
      widgetCount = @collection.length

      # You'd probably use some sort of templating system in a production application, but this just a sample.
      @$el.html "
        <h1>WidgetApp</h1>
        <p>You have <span class='widgetCount'>#{widgetCount}</span> widget#{if widgetCount isnt 1 then 's' else ''}.</p>
        <p><button class='addWidget'>Add Widget</button> <button class='removeWidget'>Remove Widget</button></p>
        <p>Congrats, everything works! Read the Backbone docs at <a href='http://backbonejs.org/'>backbonejs.org</a> and turn this into your own app.</p>
        <div class='images'>
          <img src='img/backbone-logo.png' class='backbone-logo' />
          <img src='img/cordova-logo.png' class='cordova-logo' />
        </div>
      "

    addWidget: ->
      @collection.add
        addedAt: new Date().toString()

    removeWidget: ->
      @collection.pop()

    updateWidgetCount: ->
      @$(".widgetCount").html @collection.length