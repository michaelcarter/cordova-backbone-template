define (require, exports, module) ->

  Backbone = require('backbone')
  Widget = require('models/widget')

  class Widgets extends Backbone.Collection

    model: Widget