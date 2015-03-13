`import Ember from 'ember'`

EditableLinkComponent = Ember.Component.extend(
  classNames: ['link-item']
  isEditing: false
  actions:
    cancelEdition: ->
      @get('link').rollback()
      @set('isEditing', false)
    editLink: ->
      @set('isEditing', true)
    updateLink: ->
      @get('link').save().then (linkSaved) =>
        @set('isEditing', false)
)

`export default EditableLinkComponent`
