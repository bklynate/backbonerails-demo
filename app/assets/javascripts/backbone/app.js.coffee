@Demo = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    headerRegion: "#header-region"
    mainRegion: "#main-region"
    footerRegion: "#footer-region"

  # App.addInitializer ->
  #   App.execute "footer:show"

  App.on "Initialize:after",  ->
    if Backbone.history
      Backbone.history.start()

  App

