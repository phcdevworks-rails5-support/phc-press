require_dependency "phcpress/application_controller"

module Phcpress
  class Api::V1::CategoriesController < ApplicationController
  
    # Only Responds to API Requests
    respond_to :json
    
    # Article Category API
    def index
      @modules_categories = Modules::Category.order('catname ASC')
    end
  
  end
end
