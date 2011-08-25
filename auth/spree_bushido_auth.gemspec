version = File.read(File.expand_path("../../SPREE_VERSION", __FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_bushido_auth'
  s.version     = version
  s.summary     = 'Bushido authentication for use with Spree.'
  s.description = 'Required dependancy for Spree-Bushido'

  s.required_ruby_version = '>= 1.8.7'
  s.authors     = ["Akash Manohar J", "Sean Schofield"]
  s.email       = ["akash@akash.im"]
  s.homepage    = 'http://spreecommerce.com'

  s.files        = Dir['LICENSE', 'README.md', 'app/**/*', 'config/**/*', 'lib/**/*', 'db/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core',  version)
  s.add_dependency('devise', '= 1.4.2')
  s.add_dependency('devise_bushido_authenticatable', '> 0.1')
  s.add_dependency('cancan', '= 1.6.4')
end
