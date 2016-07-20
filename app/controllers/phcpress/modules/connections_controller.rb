require_dependency "phcpress/application_controller"

module Phcpress
  class Modules::ConnectionsController < ApplicationController
    before_action :set_modules_connection, only: [:show, :edit, :update, :destroy]

    # GET /modules/connections
    def index
      @modules_connections = Modules::Connection.all
    end

    # GET /modules/connections/1
    def show
    end

    # GET /modules/connections/new
    def new
      @modules_connection = Modules::Connection.new
    end

    # GET /modules/connections/1/edit
    def edit
    end

    # POST /modules/connections
    def create
      @modules_connection = Modules::Connection.new(modules_connection_params)

      if @modules_connection.save
        redirect_to @modules_connection, notice: 'Connection was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /modules/connections/1
    def update
      if @modules_connection.update(modules_connection_params)
        redirect_to @modules_connection, notice: 'Connection was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /modules/connections/1
    def destroy
      @modules_connection.destroy
      redirect_to modules_connections_url, notice: 'Connection was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_modules_connection
        @modules_connection = Modules::Connection.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def modules_connection_params
        params.require(:modules_connection).permit(:category_id, :post_id)
      end
  end
end
