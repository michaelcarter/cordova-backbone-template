# Cordova Backbone Template (v1.0.0)

## What is it?

This goal of this repository is to jump start you past all the complexity of setting up a Cordova app and project workflow. You should be able to download, compile and run the project on iOS or Android in a few commands, and easily get developing and making changes to your mobile app straight away.

I've chosen Backbone as a framework for this template project for the following reasons: 

 - Backbone is simple to understand.
 - Backbone doesn't prescribe the architecture of your application too heavily.
 - Backbone is widely used
 - Backbone is easy to extend, manipulate and use alongside other libraries, which you will probably eventually want to do when your app gets over a certain size.
 

## Installation/Running

### Prerequisites
 * **[NodeJS](http://nodejs.org/)**
 * For iOS releases:
   - **[XCode](https://developer.apple.com/xcode/)**
   - **Xcode Command Line Tools** (Google for lots of instructions on installing these).
 * For Android releases:
   - **[The Android SDK](http://developer.android.com/sdk/index.html)**
 
### Running on a device or simulator
Installing node/bower dependencies (both locally and globally for node):

```
npm install -g
npm install 
bower install
```

Building your JavaScript:

```
grunt build
```

Running your tests:

```
grunt test
```

Adding your ios or android platforms:

```
cordova platforms add ios
cordova platforms add android
```

Building your application for iOS or Android:

```
cordova build ios
cordova build android
```

Running your app in an iOS or Android simulator:

``` 
cordova emulate ios
cordova emulate android
```

Running your app on a physical device:

```
cordova run ios
cordova run android
```

## Working on your application

### Automating your workflow with grunt tasks

When making an application from this template, you'll largely be editing source in the `assets` folder, which will then be automatically moved into its correct position in the `www` folder for Cordova. In order to automate this process and streamline your workflow, there are some helpful grunt tasks included:

```
grunt watch
```
This will watch the assets folder for code changes, and copy your JS, less and images on the fly.

```
grunt server
```
Runs a HTTP server on port 5000 to server up what's in your `www` folder. You can run your app in-browser at `http://localhost:5000`, or run your tests at `http://localhost:5000/js/spec`.

With these two tasks running, code changes you make in `assets` are ready to view in a matter of seconds, meaning you don't have to manually re-compile or re-deploy to a device to view your work.

### Running your tests

The default template includes a couple of very basic Mocha/Chai/Sinon tests to get you going, you'll find these in `assets/javascripts/spec`, and they can be run with the `grunt test` command. When adding new test files, be sure to include them in `assets/javascripts/spec/app_spec.js` or they will not be run. 

Your tests are copied across to `www/` the same way your application code is, so be sure to keep your `grunt watch` task running while working on them, or if you don't want to run the watch task, run `grunt build` before you run them each time to see changes. 

With `grunt server` running, you can also access your tests at `http://localhost:5000/js/spec`.

### Adding new libraries

You can add new libraries and modules to use in your project via `bower` or `node`. E.g:

```
bower install my-desired-module --save
npm install my-desired-module --save
```

Use `bower` for libraries and modules you want to be available in your application, these are installed into the `components` directory. Use `node` for ones you want as part of your development workflow (this includes running tests), these are installed into the `node_modules` directory.

For any bower components you want to use in your project, you'll need to configure them for use with requirejs, to do this. Add them to your `assets/javascripts/app/require_config.js` file. If you're struggling with this, [read up on how requirejs works](http://requirejs.org/).

## Projects built from this template

* [The Holiday Extras App](https://play.google.com/store/apps/details?id=com.HolidayExtras.Tripapp)
* [Group Track](https://play.google.com/store/apps/details?id=co.uk.thedumbterminal.grouptracker)

## Thanks
Major thanks to [Sam Breed](https://twitter.com/sambreed) of [QuickLeft](http://quickleft.com/) for bringing me up to speed on all things Cordova.
