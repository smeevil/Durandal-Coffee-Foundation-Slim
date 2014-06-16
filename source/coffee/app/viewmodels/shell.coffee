define [
  "plugins/router"
  "durandal/app"
], (router, app) ->
  router: router
  search: ->
    
    #It's really easy to show a message box.
    #You can add custom options too. Also, it returns a promise for the user's response.
    app.showMessage "Search not yet implemented..."
    return

  activate: ->
    router.map([
      {
        route: ""
        title: "Welcome"
        moduleId: "viewmodels/welcome"
        nav: true
      },
      {
        route: "example"
        moduleId: "viewmodels/example"
        nav: true
      }
    ]).buildNavigationModel()
    router.activate()

