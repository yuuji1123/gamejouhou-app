class UsersController < ApplicationController

  def new
  end

  def show
    @user = current_user
    @games = current_user.games
  end

  def edit
  end

  def update
  end
  
end
