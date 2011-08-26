version = File.read(File.expand_path("../SPREE_VERSION",__FILE__)).strip

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_bushido'
  s.version     = version
  s.summary     = 'Bushido version of the full-stack e-commerce framework for Ruby on Rails.'
  s.description = 'Spree is an open source e-commerce framework for Ruby on Rails. This variant of Spree ported to run on Bushido. Join us on the spree-user google group or in #spree on IRC'

  s.files        = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = ">= 1.3.6"

  s.authors           = ["Sean Schofield", "Akash Manohar J"]
  s.email             = 'akash@akash.im'
  s.homepage          = 'http://spreecommerce.com'

  #s.bindir             = 'bin'
  #s.executables        = ['spree']
  #s.default_executable = 'spree'

  s.add_dependency('spree_core',  version)
  s.add_dependency('spree_bushido_auth', version)
  s.add_dependency('spree_api', version)
  s.add_dependency('spree_dash', version)
  s.add_dependency('spree_sample', version)
  s.add_dependency('spree_promo', version)
end
