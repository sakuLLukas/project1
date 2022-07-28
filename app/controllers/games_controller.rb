class GamesController < ApplicationController
  before_action :check_for_login, :except => [:home]

  def home 
  end
  
  def index
    @games = Game.all
  end

  def new
    @games = Game.new
  end

  def create
    games = Game.create game_params
    redirect_to games_path 
  end

  def edit
    @games = Game.find params[:id]
  end

  def update
    games = Game.find params[:id] 
    games.update game_params
    redirect_to games 
  end

  def show
    @game = Game.find params[:id]
  end

  def destroy
    game = Game.find params[:id] 
    game.destroy 
    redirect_to games_path
  end

  private 

  def game_params 
    params.require(:game).permit(:title, :description, :image, :developer)
  end

end

