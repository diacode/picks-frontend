`import Ember from "ember"`

AdminLinksPendingController = Ember.ArrayController.extend(
  sortProperties: ['created_at']
  sortAscending: false
)

`export default AdminLinksPendingController`