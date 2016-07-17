require_dependency "phcpress/application_controller"

module Phcpress
	class News::PostsController < ApplicationController

		# Filters & Security
		#layout 'layouts/phcpress/newspost/news_layout'
		#before_action :authenticate_user!
		before_action :set_news_post, only: [:edit, :update, :destroy]

		# News Post Index
		def index
			@news_posts = News::Post.all
		end

		# New News Article
		def new
			@news_post = News::Post.new
		end

		# Edit News Article
		def edit
		end

		# Create News Article
		def create
			@news_post = News::Post.new(news_post_params)
			#@news_post.user_id = current_user
			if @news_post.save  
				redirect_to news_posts_path, notice: 'News Article was Successfully Created.'
				else
					render 'new'
			end
		end

		# Update News Article
		def update
			if @news_post.update(news_post_params)
				redirect_to news_posts_path, notice: 'News Article was Successfully Updated.'
			else
				render :edit
			end
		end

		# Delete News Destroy
		def destroy
			@news_post.destroy
			redirect_to news_posts_path, notice: 'News Article was Successfully Destroyed.'
		end

		private

		# Common Callbacks
		def set_news_post
			@news_post = News::Post.find(params[:id])
		end

		# Whitelist
		def news_post_params
			params.require(:news_post).permit(:newspsttitle, :newspsttext, :newspstexcerpts, :pststatus, :pstimage, :user_id, :category_id)
		end

		# Current User
		def current_user
			return unless session[:user_id]
			@current_user ||= User.find(session[:user_id])
		end

	end
end
