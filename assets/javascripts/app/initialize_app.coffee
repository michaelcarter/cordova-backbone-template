require [
  'views/widget_view'
], (WidgetView) ->

  startApp = ->
    window.app = new WidgetView

  if !!window.Cordova
    document.addEventListener("deviceready", startApp, false)
  else
    startApp()
