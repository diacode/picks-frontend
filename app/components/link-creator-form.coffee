`import Ember from 'ember'`

LinkCreatorFormComponent = Ember.Component.extend(
  linkUrl: ""
  actions:
    saveLink: ->
      store = @get('targetObject.store')
      link = store.createRecord('link', url: @linkUrl)
      link.save().then (linkSaved) =>
        @set('linkUrl', "")
)

`export default LinkCreatorFormComponent`
