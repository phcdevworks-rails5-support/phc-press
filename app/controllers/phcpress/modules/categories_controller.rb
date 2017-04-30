require_dependency "phcpress/application_controller"

module Phcpress
  class Modules::CategoriesController < ApplicationController

    # Security and Filters
    before_action :set_modules_category, only: [:show, :edit, :update, :destroy]

    # Categories Index
    def index
      @modules_categories = Modules::Category.all
    end

    # Categories Show
    def show
    end

    # Categories New
    def new
      @modules_category = Modules::Category.new
    end

    # Categories Edit
    def edit
    end

    # POST
    def create
      @modules_category = Modules::Category.new(modules_category_params)
      if @modules_category.save
        redirect_to modules_categories_url, notice: 'Category was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT
    def update
      if @modules_category.update(modules_category_params)
        redirect_to modules_categories_url, notice: 'Category was successfully updated.'
        else
          render :edit
      end
    end

    # DELETE
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
      params.require(:modules_category).permit(:catname)
    end

  end
end
