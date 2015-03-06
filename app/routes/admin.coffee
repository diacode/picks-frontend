`import Ember from "ember"`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

AdminRoute = Ember.Route.extend(AuthenticatedRouteMixin)

`export default AdminRoute`
