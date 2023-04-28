class ManagersController < ApplicationController
    def index
      @managers = Manager.all
    end
  
    def new
      @manager = Manager.new
    end
  
    def create
        @manager = Manager.new(manager_params)
        team = Team.find_by(team_name: params[:manager][:team_name]) # find the team based on its name
        # @manager.team_id = team.id # assign the id of the found team to the manager's team_id
      
        if @manager.save
          redirect_to @manager
        else
          render :new
        end
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
      @manager = Manager.find params[:id]
    end
  
    def destroy
    manager = manager.find params[:id]
    manager.destroy
      redirect_to managers_path
    end
  
    private
        def manager_params
          params.require(:manager).permit(:manager_name, :country, :coaching_year, :age)
        end
  end