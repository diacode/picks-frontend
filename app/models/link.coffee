`import DS from "ember-data"`

Link = DS.Model.extend(
  title: DS.attr()
  description: DS.attr()
  url: DS.attr()
)

`export default Link`
