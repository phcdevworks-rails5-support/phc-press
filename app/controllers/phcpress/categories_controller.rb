require_dependency "phcpress/application_controller"

module Phcpress
	class CategoriesController < ApplicationController

		# Security and Filters
		before_action :authenticate_user!
		before_action :set_category, only: [:edit, :update, :destroy]

		# Categories Index
		def index
			@categories = Category.all
		end

		# New News/Blog Category
		def new
			@category = Category.new
		end

		# Edit News/Blog Category
		def edit
		end

		# Create News/Blog Category
		def create
			@category = Category.new(category_params)

			if @category.save
				redirect_to categories_path, notice: 'Category was Successfully Created.'
			else
				render :new
			end
		end

		# Update News/Blog Category
		def update
			if @category.update(category_params)
				redirect_to categories_path, notice: 'Category was Successfully Updated.'
			else
				render :edit
			end
		end

		# Delete News/Blog Category
		def destroy
			@category.destroy
			redirect_to categories_path, notice: 'Category was Successfully Destroyed.'
		end

		private

		# Common Callbacks
		def set_category
			@category = Category.find(params[:id])
		end

		# Whitelist
		def category_params
			params.require(:category).permit(:catname)
		end

	end
end
