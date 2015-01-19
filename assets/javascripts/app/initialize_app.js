require([
  'widget_app'
], function(WidgetApp) {

  var startApp = function() {
    window.app = new WidgetApp();
  }

  // When running through Cordova, we should listen to the 'deviceready'
  // event before starting up, in desktop browsers we don't care...
  if (!!window.cordova) {
    document.addEventListener("deviceready", startApp, false);
  } else {
    startApp();
  }

});