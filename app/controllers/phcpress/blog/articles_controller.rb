require_dependency "phcpress/application_controller"

module Phcpress
  class Blog::ArticlesController < ApplicationController

    # Security, Layouts & Action Filters
    layout 'phcpress/frontend'

    # Index for All Published Posts
    def index
      @phcpress_posts_index = Article::Post.where(pststatus: "published")
    end

    # Single Page for Published Post
    def show
      @phcpress_posts_single = Article::Post.friendly.find(params[:id])
    end

  end
end
