(function() {
  define(["plugins/router", "durandal/app"], function(router, app) {
    return {
      router: router,
      search: function() {
        app.showMessage("Search not yet implemented...");
      },
      activate: function() {
        router.map([
          {
            route: "",
            title: "Welcome",
            moduleId: "viewmodels/welcome",
            nav: true
          }, {
            route: "example",
            moduleId: "viewmodels/example",
            nav: true
          }
        ]).buildNavigationModel();
        return router.activate();
      }
    };
  });

}).call(this);

//# sourceMappingURL=shell.js.map
