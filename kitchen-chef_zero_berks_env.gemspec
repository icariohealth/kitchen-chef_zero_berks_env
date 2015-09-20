Gem::Specification.new do |s|
  s.name        = "kitchen-chef_zero_berks_env"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mário Santos"]
  s.email       = ["mario.rf.santos@gmail.com"]
  s.homepage    = "https://github.com/ruizink/kitchen-chef_zero_berks_env"
  s.summary     = %q{Chef Zero provider for Test Kitchen that enables Berkshelf to vendor the cookbook versions specified by a given chef environment.}
  s.description = %q{Plugin for test-kitchen that extends the chef_zero provisioner allowing
                     berkshelf to use cookbook restrictions loaded from chef environment files.
                     This way, Berkshelf will allways vendor the cookbook versions specified 
                     in the chef environment.}

  s.require_paths = ['lib']
  s.files = Dir["{lib}/**/*"] + ["LICENSE", "README.md", "CHANGELOG.md"]
  s.license = "MIT"

  s.add_runtime_dependency 'test-kitchen', '~> 1.3'

  s.add_development_dependency 'pry', '~> 0'
  s.add_development_dependency 'berkshelf', '~> 3.2'
end