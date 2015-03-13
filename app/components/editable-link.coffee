`import Ember from 'ember'`

EditableLinkComponent = Ember.Component.extend(
  classNames: ['link-item']
  actions:
    updateLink: ->
      # @set('isLoading', true)

      # store = @get('targetObject.store')
      # link = store.createRecord('link', url: @get('linkUrl'))

      # link.save().then (linkSaved) =>
      #   @set('linkUrl', "")
      #   @set('isLoading', false)
)

`export default EditableLinkComponent`
