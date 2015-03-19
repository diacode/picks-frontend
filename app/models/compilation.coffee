`import DS from "ember-data"`

Compilation = DS.Model.extend(
  installment: DS.attr()
  intro: DS.attr()    # Not used atm
  publish: DS.attr()  # Not used atm
  created_at: DS.attr('date')
  updated_at: DS.attr('date')
  published_at: DS.attr('date')
  links: DS.hasMany('link', async: true)
  links_count: DS.attr()
)

`export default Compilation`
