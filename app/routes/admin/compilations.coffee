`import Ember from "ember"`

AdminCompilationsRoute = Ember.Route.extend(
  model: ->
    @store.findAll('compilation')
)

`export default AdminCompilationsRoute`