class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to @game
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :rpg_system, :description)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end
