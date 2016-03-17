$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcpress/version"

# Gem and Engine Specifications
Gem::Specification.new do |spec|

	spec.name        = "phcpress"
	spec.version     = Phcpress::VERSION
	spec.authors     = ["BradPotts"]
	spec.email       = ["info@phcnetworks.net"]
	spec.homepage    = "http://www.phcnetworks.net/engine-yard"
	spec.summary     = "News & Blog Posts Engine for Ruby on Rails"
	spec.description = "PHC-Press is an open source news and blog posting engine purpose built for PHCPress application."
	spec.license     = "GPL-3.0"

	spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

	# Main Dependencies
	spec.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'
	spec.add_dependency 'pg', '~> 0.18.4'
	spec.add_dependency 'devise', '~> 3.5', '>= 3.5.6'

	# Upload & Media Dependencies
	spec.add_dependency 'carrierwave', '~> 0.10.0'

	# UI & Frontend Elements
	spec.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	spec.add_dependency 'font-awesome-rails', '~> 4.5'
	spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	spec.add_dependency 'phcnotifi', '~> 0.4.0'
	
	# Development & Testing Dependencies
	spec.add_development_dependency 'sqlite3', '~> 1.3'
	spec.add_development_dependency 'database_cleaner', '~> 1.5'

	spec.add_development_dependency 'factory_girl_rails', '~> 4.4', '>= 4.4.1'
	spec.add_development_dependency 'rspec-rails', '~> 3.4'
	spec.add_development_dependency 'capybara', '~> 2.6'

	spec.add_development_dependency 'faker', '~> 1.6'
	spec.add_development_dependency 'selenium-webdriver', '~> 2.52'
	spec.add_development_dependency 'codeclimate-test-reporter', '~> 0.5.0'

end
