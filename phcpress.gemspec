$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "phcpress/version"

# Gem and Engine Specifications
Gem::Specification.new do |s|

	s.name        = "phcpress"
	s.version     = Phcpress::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["brad.potts@phcnetworks.net"]
	s.homepage    = "http://www.phcnetworks.net/engineyard"
	s.summary     = "News & Blog Posts Engine for Ruby on Rails"
	s.description = "PHC-Press is a news and blog posting engine opensource and built specifically for PHCPress rails application."
	s.license     = "GPL-3.0"

	s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

	# Main Dependencies
	s.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'
	s.add_dependency 'pg', '~> 0.18.4'
	s.add_dependency 'devise', '~> 3.5', '>= 3.5.6'

	# Upload & Media Dependencies
	s.add_dependency 'carrierwave', '~> 0.10.0'

	# UI & Frontend Elements
	s.add_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
	s.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
	s.add_dependency 'font-awesome-rails', '~> 4.5'
	s.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.4'
	s.add_dependency 'phcnotifi', '~> 0.2.5'
	
	# Development & Testing Dependencies
	s.add_development_dependency 'sqlite3', '~> 1.3'
	s.add_development_dependency 'database_cleaner', '~> 1.5'

	s.add_development_dependency 'factory_girl_rails', '~> 4.4', '>= 4.4.1'
	s.add_development_dependency 'rspec-rails', '~> 3.4'
	s.add_development_dependency 'capybara', '~> 2.6'

	s.add_development_dependency 'faker', '~> 1.6'
	s.add_development_dependency 'selenium-webdriver', '~> 2.52'

end
