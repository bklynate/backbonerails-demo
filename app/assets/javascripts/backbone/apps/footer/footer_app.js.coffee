@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false #Same as FooterApp.startWithParent = false
                           #'@' refers to 'FooterApp'
  API =
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  FooterApp.on "start", ->
    API.showFooter()

  # App.addInitializer ->
  #   API.showFooter()

  # App.commands.setHandler "footer:show", ->
  #   API.showFooter()

