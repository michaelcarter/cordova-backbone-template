define (require, exports, module) ->

  Widget = require('models/widget')

  describe "Widget", ->

    before ->
      @widget = new Widget

    describe "fooBar()", ->

      it "returns the concatenated result of foo and bar", ->
        @widget.fooBar().should.equal("foobar")
