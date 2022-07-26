class GamesController < ApplicationController
  def home 
  end
  
  def index
    @games = Game.all
  end

  def new
    @games = Game.new
  end

  def edit
  end

  def show
    
  end
end
