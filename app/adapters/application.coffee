`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend(
  host: 'http://localhost:3000'
  namespace: 'api'
)

`export default ApplicationAdapter`
