require_dependency "phcpress/application_controller"

module Phcpress
  class Modules::ConnectionsController < ApplicationController

    # Security and Filters
    before_action :set_modules_connection, only: [:show, :edit, :update, :destroy]

    # Connections Index
    def index
      @modules_connections = Modules::Connection.all
    end

    # Connections Show
    def show
    end

    # Connections New
    def new
      @modules_connection = Modules::Connection.new
    end

    # Connections Edit
    def edit
    end

    # POST
    def create
      @modules_connection = Modules::Connection.new(modules_connection_params)
      if @modules_connection.save
        redirect_to modules_connections_url, notice: 'Connection was successfully created.'
        else
          render :new
      end
    end

    # PATCH/PUT
    def update
      if @modules_connection.update(modules_connection_params)
        redirect_to modules_connections_url, notice: 'Connection was successfully updated.'
        else
          årender :edit
      end
    end

    # DELETE
    def destroy
      @modules_connection.destroy
      redirect_to modules_connections_url, notice: 'Connection was successfully destroyed.'
    end

    private

    # Common Callbacks
    def set_modules_connection
      @modules_connection = Modules::Connection.find(params[:id])
    end

    # Whitelist
    def modules_connection_params
      params.require(:modules_connection).permit(:post_id, :category_id)
    end

  end
end
