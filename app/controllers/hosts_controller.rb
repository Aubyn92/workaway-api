class HostsController < ApplicationController
  before_action :set_host, only: [:show, :update, :destroy]
  
    def index 
        @hosts = Host.all
        render json: @hosts
      end 

      def show
        render json: @host
      end 
    
      def create
        Host.create(host_params)
        render json: "host created", status: 200 
      end 
    
      def update
        @host.update(host_params)
        render json: 'host updated', status: :ok
      end 

      # def update 
      #   @host.update(host_params)
      #   render json: "host updated", status: 200
      # end 
    
      def destroy
        @host.destroy
        render json: "host deleted", status: 200
      end 
    
      private 
    
      def host_params 
        params.require(:host).permit(:name, :location, :work_category, :work_description, :time, :accommodation)
      end 
    
      def set_host 
        @host = Host.find(params[:id])
      end 
end
