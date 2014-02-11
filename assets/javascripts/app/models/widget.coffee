define (require, exports, module) ->

  Backbone = require('backbone')

  class Widget extends Backbone.Model

    fooBar: ->
      "#{@foo()}#{@bar()}"

    foo: ->
      "foo"

    bar: ->
      "bar"