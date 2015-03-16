`import Ember from 'ember'`

EditableLinkComponent = Ember.Component.extend(
  classNames: ['link-item']
  isEditing: false
  actions:
    cancelEdition: ->
      @get('link').rollback()
      @set('isEditing', false)
    editLink: ->
      unless @get('link.compilation')
        @set('isEditing', true)
        # Focusing proper control        
        Ember.run.scheduleOnce('afterRender', =>
          if $(event.target).parents(".description").length > 0
            focusedControl = 'description'
          else focusedControl = 'title'
          @$(".form-control.#{focusedControl}").focus()
        )
    updateLink: ->
      @get('link').save().then (linkSaved) =>
        @set('isEditing', false)
    approveLink: ->
      link = @get('link')
      link.set('approved', true)
      link.save().then (linkSaved) =>
        model = @get('targetObject.model')
        model.removeObject(linkSaved)
    unapproveLink: ->
      link = @get('link')
      link.set('approved', false)
      link.save().then (linkSaved) =>
        model = @get('targetObject.model')
        model.removeObject(linkSaved)
    destroyLink: ->
      link = @get('link')
      link.destroyRecord()
)

`export default EditableLinkComponent`
