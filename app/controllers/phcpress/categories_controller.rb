require_dependency "phcpress/application_controller"

module Phcpress
	class CategoriesController < ApplicationController

		# Security and Filters
		before_action :authenticate_user!
		before_action :set_category, only: [:edit, :update, :destroy]

		# GET /categories
		def index
			@categories = Category.all
		end

		# GET /categories/new
		def new
			@category = Category.new
		end

		# GET /categories/1/edit
		def edit
		end

		# POST /categories
		def create
			@category = Category.new(category_params)

			if @category.save
				redirect_to categories_path, notice: 'Category was successfully created.'
			else
				render :new
			end
		end

		# PATCH/PUT
		def update
			if @category.update(category_params)
				redirect_to categories_path, notice: 'Category was successfully updated.'
			else
				render :edit
			end
		end

		# DELETE
		def destroy
			@category.destroy
			redirect_to categories_path, notice: 'Category was successfully destroyed.'
		end

		private

		# Common callbacks
		def set_category
			@category = Category.find(params[:id])
		end

		# Whitelist
		def category_params
			params.require(:category).permit(:catname)
		end

	end
end
