require_dependency "phcpress/application_controller"

module Phcpress
  class News::PostsController < ApplicationController
    before_action :set_news_post, only: [:show, :edit, :update, :destroy]

    # GET /news/posts
    def index
      @news_posts = News::Post.all
    end

    # GET /news/posts/1
    def show
    end

    # GET /news/posts/new
    def new
      @news_post = News::Post.new
    end

    # GET /news/posts/1/edit
    def edit
    end

    # POST /news/posts
    def create
      @news_post = News::Post.new(news_post_params)

      if @news_post.save
        redirect_to @news_post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /news/posts/1
    def update
      if @news_post.update(news_post_params)
        redirect_to @news_post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /news/posts/1
    def destroy
      @news_post.destroy
      redirect_to news_posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_news_post
        @news_post = News::Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def news_post_params
        params[:news_post]
      end
  end
end
