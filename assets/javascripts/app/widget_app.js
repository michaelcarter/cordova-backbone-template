define(function(require, exports, module) {

  // Makes touch events in Backbone easy, see: https://github.com/wookiehangover/backbone.hammer
  require('hammerjs');
  require('jquery-hammerjs');
  require('backbone-hammer');

  var _            = require('underscore');
  var $            = require('jquery');
  var Backbone     = require('backbone');
  var WidgetRouter = require('routers/widget_router');
  var Widgets      = require('collections/widgets');
  var WidgetView   = require('views/widget_view');

  // We'll use this file to boot up our application. It's extending Backbone.View, but
  // isn't really used as a view at all. You'll want to replace all Backbone code in
  // this project with your own, it only exists to show you how requiring various
  // components in the application work together and it not intended to be an example
  // of a well structured or well built application. A sensible application architecture
  // is up to you, as it's not something Backbone really prescribes.
  var WidgetApp = Backbone.View.extend({

    initialize: function() {
      // Create our routers
      this.router = new WidgetRouter({
        app: this
      });

      // Create our collections
      var widgets = this.widgets = new Widgets();

      // Create our views
      this.widgetView = new WidgetView({
        collection: widgets
      });

      // Start backbone history
      Backbone.history.start();
    }

  });

  return WidgetApp;
});