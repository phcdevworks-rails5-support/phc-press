require_dependency "phcpress/application_controller"

module Phcpress
  class Api::V1::PostsController < ApplicationController

    # Only Responds to API Requests
    respond_to :json

    # Article Category API
    def index
      @articles_posts = Articles::Post.order('psttitle ASC')
    end

  end
end
