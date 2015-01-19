define(function(require, exports, module) {

  var Backbone = require('backbone');
  var Widget = require('models/widget');

  var Widgets = Backbone.Collection.extend({
    model: Widget
  });

  return Widgets;
});