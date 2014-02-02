require [
  'widget_app'
], (WidgetApp) ->

  startApp = ->
    window.app = new WidgetApp

  # When running throuhg cordova, we should listen to the deviceready
  # event before starting up, in desktop browsers we don't care...
  if !!window.Cordova
    document.addEventListener("deviceready", startApp, false)
  else
    startApp()
