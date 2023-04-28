class PlayersController < ApplicationController
    def index
      @players = Player.all
    end
  
    def new
      @player = Player.new
    end
  
    def create
        @player = Player.new(player_params)
        team = Team.find_by(team_name: params[:player][:team_name]) # find the team based on its name
        # @player.team_id = team.id # assign the id of the found team to the player's team_id
      
        if @player.save
          redirect_to @player
        else
          render :new
        end
    end
  
    def edit
      @player = Player.find params[:id]
    end
  
    def update
      player = Player.find params[:id]
      player.update player_params
      if params[:file].present?
        req = Cloudinary::Uploader.upload(params[:file])
        player.player_image = req["public_id"]
      end
      redirect_to player
    end
  
    def show
      @player = Player.find params[:id]
    end
  
    def destroy
        player = Player.find params[:id]
        player.destroy
      redirect_to player
    end
  
    private
        def player_params
          params.require(:player).permit(:player_name, :player_country, :player_position, :player_rating, :player_age, :image, :team_id, :team_name)
        end
  end