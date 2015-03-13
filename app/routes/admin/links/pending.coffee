`import Ember from "ember"`
`import AdminRoute from '../../admin'`

AdminLinksPendingRoute = AdminRoute.extend(
  model: ->
    @store.findAll('link', approved: false)
)

`export default AdminLinksPendingRoute`
