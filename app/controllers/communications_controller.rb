class CommunicationsController < ApplicationController
  def create
    communication = Communication.create(cammunication_params)
    redirect_to "/game/#{communication.game.id}"
  end

  private
  def cammunication_params
    params.require(:cammunication).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
