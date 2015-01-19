define(function(require, exports, module) {

  var Widget = require('models/widget');

  describe("Widget", function() {
    var widget;

    // I like to keep track of my spies and stubs in a single place.
    // Totally up to you how you lay out your specs though.
    var spies = {
      widget: {
        bar: null
      }
    };

    before(function() {
      widget = new Widget();
    });

    describe("A simple test", function() {

      describe("fooBar()", function() {

        it("returns the concatenated result of foo() and bar()", function() {
          widget.fooBar().should.equal("foobar");
        });

      });

    });

    describe("Using stubs", function() {

      before(function() {
        spies.widget.bar = sinon.stub(Widget.prototype, 'bar').returns("foo");
      });

      after(function() {
        spies.widget.bar.restore();
      });

      describe("fooBar()", function() {

        it("returns the concatenated result of foo() and bar()", function() {
          widget.fooBar().should.equal("foofoo");
        });

      });

    });

  });

});