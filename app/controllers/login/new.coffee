`import Ember from 'ember'`

LoginNewController = Ember.Controller.extend(
  actions:
    authenticate: ->
      data = @getProperties('identification', 'password')
      @get('session').authenticate('simple-auth-authenticator:devise', data)
)

`export default LoginNewController`