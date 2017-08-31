require_dependency "phcpresspro/application_controller"

module Phcpress
  class Api::V1::PostsController < ApplicationController

    # Only Responds to API Requests
    respond_to :json

    # Article Category API
    def index
      @article_posts = Article::Post.order('psttitle ASC')
    end

    # Article Show
    def show
      @article_post = Article::Post.find(params[:id])
    end

  end
end
