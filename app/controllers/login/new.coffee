`import Ember from 'ember'`
`import LoginControllerMixin from 'simple-auth/mixins/login-controller-mixin'`

LoginNewController = Ember.Controller.extend(LoginControllerMixin,
  authenticator: 'simple-auth-authenticator:devise'
)

`export default LoginNewController`