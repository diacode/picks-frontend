`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend(
  location: config.locationType
)

Router.map ->
  @resource 'admin', ->
    @resource 'admin.links', path: 'links', ->
      @route 'approved'
      @route 'pending'
    @resource 'admin.compilations', path: 'compilations', ->
      @resource 'admin.compilations.compilation', path: ':compilation_id'

  @resource 'login', ->
    @route 'new'

`export default Router`
