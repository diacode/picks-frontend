`import Ember from "ember"`
`import AdminRoute from '../../admin'`

AdminLinksPendingRoute = AdminRoute.extend(
  model: ->
    @store.query('link', approved: false)
)

`export default AdminLinksPendingRoute`
