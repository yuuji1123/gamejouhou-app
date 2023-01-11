class CommunicationsController < ApplicationController
  def create
    communication = Communication.create(cammunication_params)
    redirect_to "/games/#{communication.game.id}"
  end

  private
  def cammunication_params
    params.require(:communication).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
