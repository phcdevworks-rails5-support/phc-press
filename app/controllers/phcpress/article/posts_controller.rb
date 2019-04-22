require_dependency "phcpress/application_controller"

module Phcpress
  class Article::PostsController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!
    before_action :set_paper_trail_whodunnit
    before_action :set_article_post, only: [:show, :edit, :update, :destroy]

    # Article Index
    def index
      @article_posts = Phcpress::Article::Post.where(org_id: current_user.org_id)
    end

    # Article Show
    def show
      @article_post = Phcpress::Article::Post.friendly.find(params[:id])
      @versions = Phcpress::PostVersions.where(item_id: params[:id], item_type: 'Phcpress::Article::Post')
    end

    # Article New
    def new
      @article_post = Phcpress::Article::Post.new
    end

    # Article Edit
    def edit
    end

    # POST
    def create
      @article_post = Phcpress::Article::Post.new(article_post_params)
      @article_post.user_id = current_user.id
      @article_post.org_id = current_user.org_id
      if @article_post.save
        redirect_to article_posts_url, notice: 'Post was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT
    def update
      if @article_post.update(article_post_params)
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

    # Use callbacks to share common setup or constraints between actions.
    def set_article_post
      @article_post = Phcpress::Article::Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def article_post_params
      params.require(:article_post).permit(:psttittle, :psttext, :pststatus, :pstimage, :remove_pstimage, :slug, :user_id, :org_id, category_ids: [])
    end

  end
end
