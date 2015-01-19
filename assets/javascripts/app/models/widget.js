define(function(require, exports, module) {

  var Backbone = require('backbone');

  var Widget = Backbone.Model.extend({

    fooBar: function() {
      return ("" + this.foo() + this.bar());
    },

    foo: function() {
      return "foo";
    },

    bar: function() {
      return "bar";
    }

  });

  return Widget;
});