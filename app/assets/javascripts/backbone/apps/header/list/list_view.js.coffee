@Demo.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Header extends Marionette.ItemView
    template: "header/list/templates/header"
    tagName: "li"

  class List.Headers extends Marionette.CompositeView
    childView: List.Header
    childViewContainer: "ul"
    template: "header/list/templates/headers"

  # List.Headers = App.Views.CompositeView.extend({
  #   template: 'header/list/templates/headers',
  #   childView: List.Header,
  #   childViewContainer: 'ul'
  # });
