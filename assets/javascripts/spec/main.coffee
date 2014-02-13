define [
  'spec/app_spec'
], ->
  if window.mochaPhantomJS
    window.mochaPhantomJS.run()
  else
    window.mocha.run()
