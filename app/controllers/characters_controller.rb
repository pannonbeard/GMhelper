class CharactersController < ApplicationController
  before_action :get_character, only: [:show, :edit, :update, :destroy]
  def index
    @characters = Character.all
  end

  def show
  end

  def new
    @game = Game.find(params[:game_id])
    @character = Character.new
  end

  def create
    @game = Game.find(params[:game_id])
    @character = Character.new(character_params)
    @character.game_id = @game.id
    if @character.save
      redirect_to @game
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @character.update(character_params)
      redirect_to @character
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(@character.game_id)
    @character.destroy
    redirect_to game_path(@game)
  end

  private

  def character_params
    params.require(:character).permit(:name, :player_name, :strength, :dexterity, :constitution,
    :intelligence, :wisdom, :charisma, :background, :race, :alignment, :experience_points,
    :personality_traits, :ideals, :bonds, :flaws, :prof_lang, :features_trait, :equipment,
    :max_hit_points, :current_hit_points, :temporary_hit_points, :hit_dice, :player_class, :game_id)
  end

  def get_character
    @character = Character.find(params[:id])
  end

  def find_game
    @game = Game.find(params[:game_id])
  end
end
