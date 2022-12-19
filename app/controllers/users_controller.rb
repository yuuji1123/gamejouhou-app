class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @games = current_user.games
  end

end
