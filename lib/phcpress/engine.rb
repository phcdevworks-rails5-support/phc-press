# Load Requried Dependecies
require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'
require 'font-awesome-rails'

module Phcpress
	class Engine < ::Rails::Engine
		isolate_namespace Phcpress

		config.generators do |g|
			g.test_framework :rspec,
			fixtures: true,
			view_specs: false,
			helper_specs: false,
			routing_specs: false,
			controller_specs: true,
			request_specs: false
			g.fixture_replacement :factory_girl, dir: "spec/factories"
		end


	end
end
