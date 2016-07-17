require_dependency "phcpress/application_controller"

module Phcpress
	class Modules::CategoriesController < ApplicationController

		# Security and Filters
		layout 'layouts/phcpress/category/category_layout'
		before_action :authenticate_user!
		before_action :set_modules_category, only: [:show, :edit, :update, :destroy]

		# Categories Index
		def index
			@modules_categories = Modules::Category.all
		end

		# Detail News/Blog Category
		def show
		end

		# New News/Blog Category
		def new
			@modules_category = Modules::Category.new
		end

		# Edit News/Blog Category
		def edit
		end

		# Create News/Blog Category
		def create
			@modules_category = Modules::Category.new(modules_category_params)

			if @modules_category.save
				redirect_to modules_categories_url, notice: 'Category was successfully created.'
				else
					render :new
			end
		end

		# Update News/Blog Category
		def update
			if @modules_category.update(modules_category_params)
				redirect_to modules_categories_url, notice: 'Category was successfully updated.'
				else
					render :edit
			end
		end

		# Delete News/Blog Category
		def destroy
			@modules_category.destroy
			redirect_to modules_categories_url, notice: 'Category was successfully destroyed.'
		end

		private

		# Common Callbacks
		def set_modules_category
			@modules_category = Modules::Category.find(params[:id])
		end

		# Whitelist
		def modules_category_params
			params.require(:modules_category).permit(:catname, :user_id)
		end

	end
end
