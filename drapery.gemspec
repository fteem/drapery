$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "drapery/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "drapery"
  s.version     = Drapery::VERSION
  s.authors     = ["Ile Eftimov"]
  s.email       = ["ileeftimov@gmail.com"]
  s.homepage    = "https://github.com/fteem/drapery"
  s.summary     = "Close the curtains."
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.19"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency "sqlite3"
end
