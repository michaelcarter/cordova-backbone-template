require.config({
  deps: ['spec/main'],
  baseUrl: '../app',
  paths: {
    'backbone'        : '../../../components/backbone/backbone',
    'hammerjs'        : '../../../components/hammerjs/hammer',
    'jquery-hammerjs' : '../../../components/jquery-hammerjs/jquery.hammer-full',
    'backbone-hammer' : '../../../components/backbone.hammer/backbone.hammer',
    'underscore'      : '../../../components/lodash/dist/lodash',
    'jquery'          : '../../../components/jquery/dist/jquery',
    'spec'            : '../spec',
    'chai'            : '../../../components/chai/chai',
    'sinonChai'       : '../../../components/sinon-chai/lib/sinon-chai'
  },
  shim: {
    backbone: {
      deps: ['jquery', 'underscore'],
      exports: 'Backbone'
    }
  }
});