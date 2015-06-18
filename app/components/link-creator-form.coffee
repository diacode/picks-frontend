`import Ember from 'ember'`

LinkCreatorFormComponent = Ember.Component.extend(
  linkUrl: ""
  isLoading: false
  invalidLink: (->
    linkUrl = @get('linkUrl')
    if linkUrl == ""
      null
    else if linkUrl.match(/^(?:(?:https?):\/\/)(?:\S+(?::\S*)?@)?(?:(?!10(?:\.\d{1,3}){3})(?!127(?:\.\d{1,3}){3})(?!169\.254(?:\.\d{1,3}){2})(?!192\.168(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]+-?)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]+-?)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/[^\s]*)?$/i)
      false
    else
      true
  ).property('linkUrl')
  submitDisabled: (->
    @get('invalidLink') || @get('isLoading') || @get('linkUrl') == ""
  ).property('linkUrl', 'isLoading', 'invalidLink')
  actions:
    saveLink: ->
      @set('isLoading', true)

      store = @get('targetObject.store')
      model = @get('targetObject.model')
      link = store.createRecord('link', url: @get('linkUrl'), approved: false, created_at: new Date())

      link.save().then (linkSaved) =>
        @set('linkUrl', "")
        @set('isLoading', false)
        # We have to push the object since the model is being
        # retrieved using findQuery. If we used findAll the
        # push would be automatic
        # See: http://stackoverflow.com/a/26489414
        # Inserting the object at the beginning of the array
        model.unshiftObject(linkSaved._internalModel) # https://github.com/emberjs/data/issues/3313
)

`export default LinkCreatorFormComponent`
