require_dependency "phcpress/application_controller"

module Phcpress
  class Api::V1::PostsController < ApplicationController

    # Only Responds to API Requests
    respond_to :json

    # Article Category API
    def index
      @article_posts = Article::Post.where(poststatus: published).order('created_at ASC')
    end

    # Article Show
    def show
      @article_post = Article::Post.where(poststatus: published).find(params[:id])
    end

  end
end
