require.config

  deps    : ['spec/main']
  baseUrl : '../app'

  paths:
    'backbone'        : '../../../components/backbone/backbone'
    'hammer'          : '../../../components/hammerjs/dist/jquery.hammer'
    'backbone-hammer' : '../../../components/backbone.hammer/backbone.hammer'
    'underscore'      : '../../../components/lodash/dist/lodash'
    'jquery'          : '../../../components/jquery/jquery'
    'spec'            : '../spec'
    'chai'            : '../../../components/chai/chai'
    'sinonChai'       : '../../../components/sinon-chai/lib/sinon-chai'

  shim:
    backbone:
      deps    : ['jquery', 'underscore']
      exports : 'Backbone'
