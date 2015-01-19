define(function(require, exports, module) {

  var Backbone = require('backbone');
  var Widget   = require('models/widget');

  var WidgetView = Backbone.View.extend({
    el: "#app",

    hammerEvents: {
      "touch button.removeWidget": "removeWidget",
      "touch button.addWidget": "addWidget"
    },

    initialize: function() {
      return this.listenTo(this.collection, 'add remove', this.updateWidgetCount);
    },

    render: function() {
      var widgetCount = this.collection.length;

      // You'd probably use some sort of templating system in a production application, but this just a sample.
      this.$el.html("<h1>WidgetApp</h1> \
        <p>You have <span class='widgetCount'>" + widgetCount + "</span> widget" + ((widgetCount !== 1) ? 's' : '') + ".</p> \
        <p><button class='addWidget'>Add Widget</button> <button class='removeWidget'>Remove Widget</button></p> \
        <p>Congrats, everything works! Read the Backbone docs at <a href='http://backbonejs.org/'>backbonejs.org</a> and turn this into your own app.</p> \
        <div class='images'> \
          <img src='img/backbone-logo.png' class='backbone-logo' /> \
          <img src='img/cordova-logo.png' class='cordova-logo' /> \
        </div> \
      ");
    },

    addWidget: function() {
      this.collection.add({
        addedAt: new Date().toString()
      });
    },

    removeWidget: function() {
      this.collection.pop();
    },

    updateWidgetCount: function() {
      this.$(".widgetCount").html(this.collection.length);
    }

  });

  return WidgetView;
});