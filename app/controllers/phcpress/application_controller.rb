module Phcpress
	class ApplicationController < ActionController::Base

		# Load Engine Helper Files
		helper Phcpress::Engine.helpers

		private

		# Resolve Application Layouts
		def layouts_resolver_application
			case action_name
				when "index"
					"layouts/phcpress/application"
				else
					"layouts/phcpress/application"
			end
		end

		# Resolve Webpage Layouts
		def layouts_resolver_webpages
			case action_name
				when "newspage"
					"layouts/phcpress/pagelayout"
				when "blogpage"
					"layouts/phcpress/pagelayout"
			end
		end

	end
end
