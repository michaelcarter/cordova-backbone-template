require.config
  deps : ['initialize_app']

  paths:
    'backbone'   : '../../../components/backbone/backbone'
    'underscore' : '../../../components/underscore/underscore'
    'jquery'     : '../../../components/jquery/jquery'

  shim:
    'backbone':
      deps    : ['jquery', 'underscore']
      exports : 'Backbone'
