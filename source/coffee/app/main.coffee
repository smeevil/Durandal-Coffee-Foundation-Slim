requirejs.config
  paths:
    text: "../bower_components/requirejs-text/text"
    durandal: "../bower_components/durandal/js"
    plugins: "../bower_components/durandal/js/plugins"
    transitions: "../bower_components/durandal/js/transitions"
    knockout: "../bower_components/knockout.js/knockout"
    'knockout-mapping': "../bower_components/knockout-mapping"
    bootstrap: "../bower_components/bootstrap/js/bootstrap"
    jquery: "../bower_components/jquery/jquery"
    foundation: "../bower_components/foundation/js/foundation"
    datamodels: "datamodels"

  shim:
    "knockout-mapping/knockout.mapping": {deps: [ "knockout"]}
    "foundation/jquery.cookie": { deps: ["jquery"] },
    "foundation/jquery.event.move": { deps: ["jquery"] },
    "foundation/jquery.event.swipe": { deps: ["jquery"] },
    "foundation/jquery.foundation.accordion": { deps: ["jquery"] },
    "foundation/jquery.foundation.alerts": { deps: ["jquery"] },
    "foundation/jquery.foundation.buttons": { deps: ["jquery"] },
    "foundation/jquery.foundation.clearing": { deps: ["jquery"] },
    "foundation/jquery.foundation.forms": { deps: ["jquery"] },
    "foundation/jquery.foundation.joyride": { deps: ["jquery"] },
    "foundation/jquery.foundation.magellan": { deps: ["jquery"] },
    "foundation/jquery.foundation.mediaQueryToggle": { deps: ["jquery"] },
    "foundation/jquery.foundation.navigation": { deps: ["jquery"] },
    "foundation/jquery.foundation.orbit": { deps: ["jquery"] },
    "foundation/jquery.foundation.reveal": { deps: ["jquery"] },
    "foundation/jquery.foundation.tabs": { deps: ["jquery"] },
    "foundation/jquery.foundation.tooltips": { deps: ["jquery"] },
    "foundation/jquery.foundation.topbar": { deps: ["jquery"] },
    "foundation/jquery.foundation.utils": { deps: ["jquery"] },
    "foundation/jquery.offcanvas": { deps: ["jquery"] },
    "foundation/jquery.placeholder": { deps: ["jquery"] }


define [
  "durandal/system"
  "durandal/app"
  "durandal/viewLocator"
], (system, app, viewLocator) ->
  #>>excludeStart("build", true);
  system.debug true

  #>>excludeEnd("build");
  app.title = "Durandal Starter Kit"

  app.configurePlugins
    router: true
    dialog: true

  app.start().then ->
    #Replace 'viewmodels' in the moduleId with 'views' to locate the view.
    #Look for partial views in a 'views' folder in the root.
    viewLocator.useConvention()

    #Show the app by setting the root view model for our application with a transition.
    app.setRoot "viewmodels/shell", "entrance"
    return

  return
