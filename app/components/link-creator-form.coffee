`import Ember from 'ember'`

LinkCreatorFormComponent = Ember.Component.extend(
  linkUrl: ""
  isLoading: false
  actions:
    saveLink: ->
      @set('isLoading', true)

      store = @get('targetObject.store')
      link = store.createRecord('link', url: @linkUrl)

      link.save().then (linkSaved) =>
        @set('linkUrl', "")
        @set('isLoading', false)
)

`export default LinkCreatorFormComponent`
