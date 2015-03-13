`import Ember from "ember"`
`import AdminRoute from '../../admin'`

AdminLinksApprovedRoute = AdminRoute.extend(
  model: ->
    @store.findQuery('link', approved: true)
)

`export default AdminLinksApprovedRoute`
