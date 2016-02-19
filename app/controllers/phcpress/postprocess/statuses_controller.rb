require_dependency "phcpress/application_controller"

module Phcpress
  class Postprocess::StatusesController < ApplicationController
    before_action :set_postprocess_status, only: [:show, :edit, :update, :destroy]

    # GET /postprocess/statuses
    def index
      @postprocess_statuses = Postprocess::Status.all
    end

    # GET /postprocess/statuses/1
    def show
    end

    # GET /postprocess/statuses/new
    def new
      @postprocess_status = Postprocess::Status.new
    end

    # GET /postprocess/statuses/1/edit
    def edit
    end

    # POST /postprocess/statuses
    def create
      @postprocess_status = Postprocess::Status.new(postprocess_status_params)

      if @postprocess_status.save
        redirect_to @postprocess_status, notice: 'Status was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /postprocess/statuses/1
    def update
      if @postprocess_status.update(postprocess_status_params)
        redirect_to @postprocess_status, notice: 'Status was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /postprocess/statuses/1
    def destroy
      @postprocess_status.destroy
      redirect_to postprocess_statuses_url, notice: 'Status was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_postprocess_status
        @postprocess_status = Postprocess::Status.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def postprocess_status_params
        params.require(:postprocess_status).permit(:pststatus)
      end
  end
end
