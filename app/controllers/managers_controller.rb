class ManagersController < ApplicationController
    def index
      @managers = Manager.all
    end
  
    def new
      @manager = Manager.new
    end
  
    def create
      manager = Manager.create manager_params
      redirect_to manager
    end
  
    def edit
      @manager = Manager.find params[:id]
    end
  
    def update
      manager = Manager.find params[:id]
      manager.update manager_params
      redirect_to manager
    end
  
    def show
      @manager = manager.find params[:id]
    end
  
    def destroy
    manager = manager.find params[:id]
    manager.destroy
      redirect_to managers_path
    end
  
    private
        def manager_params
          params.require(:manager).permit(:manager_name, :manager_country, :manager_year, :manager_age, :image)
        end
  end