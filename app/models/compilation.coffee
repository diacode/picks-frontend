`import DS from "ember-data"`

Compilation = DS.Model.extend(
  installment: DS.attr()
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
  published_at: DS.attr('date')
  links: DS.hasMany('link')
)

`export default Compilation`
