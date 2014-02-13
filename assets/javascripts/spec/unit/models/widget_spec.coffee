define (require, exports, module) ->

  Widget = require('models/widget')

  describe "Widget", ->

    # I like to keep track of my spies and stubs in a single place.
    # Totally up to you how you lay out your specs though.
    spies =
      widget:
        bar: null

    before ->
      @widget = new Widget

    describe "A simple test", ->

      describe "fooBar()", ->

        it "returns the concatenated result of foo() and bar()", ->
          @widget.fooBar().should.equal("foobar")


    describe "Using stubs", ->

      before ->
        spies.widget.bar = sinon.stub(Widget::, 'bar').returns("foo")

      after ->
        spies.widget.bar.restore()

      describe "fooBar()", ->

        it "returns the concatenated result of foo() and bar()", ->
          @widget.fooBar().should.equal("foofoo")
