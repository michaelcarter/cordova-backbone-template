define(function(require, exports, module) {

  var Backbone = require('backbone');

  var WidgetRouter = Backbone.Router.extend({

    routes: {
      "": "widgets" // This is a default route.
    },

    initialize: function(options) {
      this.app = options.app;
    },

    widgets: function() {
      this.app.widgetView.render();
    }

  });

  return WidgetRouter;
});

