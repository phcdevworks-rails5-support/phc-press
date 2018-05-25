require_dependency "phcpress/application_controller"
require 'httparty'

module Phcpress
  class Frontend::ArticlesController < ApplicationController

    # Security & Filters
    layout '/layouts/phcpress/frontend.html.erb'

    # Article Index
    def index
      @phcpress_frontend_article_list = HTTParty.get("https://#{ENV["PHC_PRESS_API_DOMAIN"]}/#{ENV["PHC_PRESS_API_FOLDER"]}/api/v1/posts.json")
    end

    # Article Show
    def show
      @phcpress_frontend_article_post = HTTParty.get("https://#{ENV["PHC_PRESS_API_DOMAIN"]}/#{ENV["PHC_PRESS_API_FOLDER"]}/api/v1/posts.json")
    end

  end
end
