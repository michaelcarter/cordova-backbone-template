var specUnit = [
  'spec/unit/models/widget_spec'
];

var dependencies = ['chai', 'sinonChai'].concat(specUnit);

define(dependencies, function(chai, sinonChai) {
  chai.should();
  chai.use(sinonChai);
});
