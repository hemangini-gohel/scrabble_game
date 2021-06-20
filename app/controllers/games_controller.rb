class GamesController < ApplicationController

  before_action :find_game, only: [:show, :edit, :update, :destroy]
  before_action :set_player_details, only: [:show, :edit]

  def index
    @games = Game.all
  end

  def show;end

  def new
    @game = Game.new    
  end

  def create
      if Game.create(game_params)
        flash[:success] = "Game added successfully."
        redirect_to games_path        
      else
        flash[:danger] = "Game not added"
        render 'new'
      end    
  end

  def edit;end

  def update    
    if @game.update(game_params)
      flash[:success] = "Game updated successfully."
      redirect_to games_path      
    else
      flash[:danger] = "Game not updated"
      render 'edit'
    end
  end

  def destroy    
    if @game.destroy
      flash[:success] = "Game deleted successfully."
      redirect_to games_path      
    else
      flash[:danger] = "Game not deleted."
      redirect_to games_path 
    end
  end

  private
  def game_params    
    params.require(:game).permit(:name, :start_date, :end_date, :player1_id, :player1_score, :player2_id, :player2_score)
  end

  def find_game
    @game = Game.find(params[:id])
  end

  def set_player_details
    @game.player1_id = @game.players.first.member.id
    @game.player1_score = @game.players.first.score

    @game.player2_id = @game.players.last.member.id
    @game.player2_score = @game.players.last.score
  end
  
end
