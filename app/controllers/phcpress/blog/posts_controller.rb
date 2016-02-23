# Load General Controller for Engine
require_dependency "phcpress/application_controller"

# Code for Blog Posting
module Phcpress
	class Blog::PostsController < ApplicationController

		# Filters & Security
		before_action :set_blog_post, only: [:edit, :update, :destroy]

		# Blog Post Index (/blog/posts)
		def index
			@blog_posts = Blog::Post.all
		end

		# Single Blog Post (/blog/posts/1)
		#def show
		#end

		# Create a New Blog Post (/blog/posts/new)
		def new
			@blog_post = Blog::Post.new
		end

		# Edit Blog Post (/blog/posts/1/edit)
		def edit
		end

		# POST
		def create
			@blog_post = Blog::Post.new(blog_post_params)

			if @blog_post.save
				redirect_to blog_posts_path, notice: 'Blog post was successfully created.'
			else
				render :new
			end
		end

		# PATCH/PUT
		def update
			if @blog_post.update(blog_post_params)
				redirect_to blog_posts_path, notice: 'Blog post was successfully updated.'
			else
				render :edit
			end
		end

		# DELETE
		def destroy
			@blog_post.destroy
			redirect_to blog_posts_path, notice: 'Blog post was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_blog_post
		@blog_post = Blog::Post.find(params[:id])
		end

		# Whitelist on what can be posted
		def blog_post_params
			params.require(:blog_post).permit(:blogpsttitle, :blogpsttext, :blogpstexcerpts, :pststatus)
		end

	end
end
