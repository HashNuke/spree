spree_bushido_version = File.read(File.expand_path("../../SPREE_BUSHIDO_VERSION",__FILE__)).strip
version = File.read(File.expand_path("../../SPREE_VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_bushido_promo'
  s.version     = spree_bushido_version
  s.summary     = 'Promotion functionality for use with Spree.'
  s.description = 'Required dependancy for Spree'

  s.required_ruby_version = '>= 1.8.7'
  s.authors      = ['David North', 'Akash Manohar']
  s.email       = "akash@akash.im"
  s.homepage    = 'http://spreecommerce.com'

  s.files        = Dir['CHANGELOG', 'README', 'MIT-LICENSE', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*', 'public/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core',  version)
end
