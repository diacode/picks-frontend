`import Ember from "ember"`
`import AdminRoute from '../../admin'`

AdminLinksIndexRoute = AdminRoute.extend(
  model: ->
    @store.find('link')
)

`export default AdminLinksIndexRoute`
