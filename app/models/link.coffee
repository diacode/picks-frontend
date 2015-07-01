`import DS from "ember-data"`

Link = DS.Model.extend(
  title: DS.attr()
  description: DS.attr()
  url: DS.attr()
  approved: DS.attr()
  category: DS.attr()
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
  compilation: DS.belongsTo('compilation', async: true)
)

`export default Link`
