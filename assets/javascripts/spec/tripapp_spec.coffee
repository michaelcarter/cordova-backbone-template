specUnit = [
  'spec/unit/models/widget_spec'
]

dependencies = ['chai', 'sinonChai'].concat(specUnit)

define dependencies, (chai, sinonChai) ->
  chai.should()
  chai.use(sinonChai)
