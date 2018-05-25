$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "phcpress/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "phcpress"
  s.version     = Phcpress::VERSION
  s.authors     = ["BradPotts"]
  s.email       = ["brad.potts@phcnetworks.net"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Phcpress."
  s.description = "TODO: Description of Phcpress."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
