`import ActiveModelAdapter from 'active-model-adapter'`
`import config from '../config/environment'`

ApplicationAdapter = ActiveModelAdapter.extend(
  host: config.API_HOST
  namespace: 'api'
)

`export default ApplicationAdapter`
