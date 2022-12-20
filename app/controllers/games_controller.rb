class GamesController < ApplicationController

  def index
    @game = Game.includes(:user).order("created_at DESC")
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :category_id, :point_id, :time, :comment).merge(user_id: current_user.id)
  end

end
