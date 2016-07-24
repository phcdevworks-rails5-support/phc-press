require_dependency "phcpress/application_controller"

module Phcpress
	class Articles::PostsController < ApplicationController

		# Filters & Security
		before_action :set_articles_post, only: [:show, :edit, :update, :destroy]

		# Article Index
		def index
			@articles_posts = Articles::Post.all
		end

		# Article Show
		def show
		end

		# Article New
		def new
			@articles_post = Articles::Post.new
		end

		# Article Edit
		def edit
		end

		# POST
		def create
			@articles_post = Articles::Post.new(articles_post_params)
			if @articles_post.save
				@articles_post.connections.build
				redirect_to articles_posts_url, notice: 'Post was successfully created.'
				else
					render :new
			end
		end

		# PATCH/PUT
		def update
			if @articles_post.update(articles_post_params)
				@articles_post.connections.build
				redirect_to articles_posts_url, notice: 'Post was successfully updated.'
				else
					render :edit
			end
		end

		# DELETE
		def destroy
			@articles_post.destroy
			redirect_to articles_posts_url, notice: 'Post was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_articles_post
			@articles_post = Articles::Post.find(params[:id])
		end

		# Params Whitelist
		def articles_post_params
			params.require(:articles_post).permit(:psttitle, :psttext, :pststatus, :pstimage, :remove_pstimage, category_ids: [])
		end

	end
end
