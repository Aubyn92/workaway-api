class HostsController < ApplicationController
  before_action :set_host, only: [:show, :update, :destroy]
  before_action :authenticate_user, only: [:update,:create,:destroy]
 
 

    def index 
        @hosts = Host.all
        render json: @hosts
      end 

      def show
        render json: @host
      end 
    
      def create
        # pp current_user
        host = Host.new(host_params)
        host.user = current_user
        host.save
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
