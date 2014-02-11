define [
  'spec/tripapp_spec'
], ->
  if window.mochaPhantomJS
    window.mochaPhantomJS.run()
  else
    window.mocha.run()
