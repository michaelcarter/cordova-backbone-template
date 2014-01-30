// Replacement for `cordova serve [platform]` that supports logging and better
// caching.
var path = require('path');


var mountFolder = function(connect, dir) {
  return connect["static"](path.resolve(dir));
};

var serveCordova = function(connect, platform) {
  return function(req, res, next) {
    if (/\/(plugins\/|cordova\.js|cordova_plugins\.js)/.test(req.url)) {
      if (platform === 'android') {
        platform += '/assets';
      }
      return mountFolder(connect, "./platforms/" + platform + "/www")(req, res, next);
    } else {
      return next();
    }
  };
};

exports.iOS = function(connect) {
  return [
    connect.logger('dev'),
    serveCordova(connect, 'ios'),
    mountFolder(connect, './www')];
};

exports.android = function(connect) {
  return [
    connect.logger('dev'),
    serveCordova(connect, 'android'),
    mountFolder(connect, './www')
  ];
};

exports.web = function(connect) {
  return [
    connect.logger('dev'),
    mountFolder(connect, '.'),
    mountFolder(connect, './www')
  ];
};
