require_dependency "phcpress/application_controller"

module Phcpress
  class Blog::ArticlesController < ApplicationController

    # Layout
    layout 'phcpress/frontend'

    # INDEX
    def index
      @phcpress_posts_index = Article::Post.where(pststatus: "published")
    end

    # SHOW
    def show
      @phcpress_posts_single = Article::Post.friendly.find(params[:id])
    end

  end
end
