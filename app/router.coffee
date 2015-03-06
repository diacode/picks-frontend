`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend(
  location: config.locationType
)

Router.map ->
  @resource 'admin', ->
    @resource 'admin.links', path: 'links', ->
    @resource 'admin.compilations', path: 'compilations', ->

  @resource 'login', ->
    @route 'new'

`export default Router`
