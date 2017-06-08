require_dependency "phcpress/application_controller"

module Phcpress
  class Article::PostsController < ApplicationController

    # Filters & Security
    before_action :set_article_post, only: [:show, :edit, :update, :destroy]

    # Article Index
    def index
      @article_posts = Article::Post.all
    end

    # Article Show
    def show
    end

    # Article New
    def new
      @article_post = Article::Post.new
    end

    # Article Edit
    def edit
    end

    # POST
    def create
      @article_post = Article::Post.new(article_post_params)
      if @article_post.save
        @article_post.connections.build
        redirect_to article_posts_url, notice: 'Post was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT
    def update
      if @article_post.update(article_post_params)
        @article_post.connections.build
        redirect_to article_posts_url, notice: 'Post was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE
    def destroy
      @article_post.destroy
      redirect_to article_posts_url, notice: 'Post was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_article_post
      @article_post = Article::Post.find(params[:id])
    end

    # Params Whitelist
    def article_post_params
      params.require(:article_post).permit(:psttitle, :psttext, :pststatus, :pstimage, :remove_pstimage, category_ids: [])
    end

  end
end
