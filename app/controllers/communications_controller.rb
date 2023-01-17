class CommunicationsController < ApplicationController
  def create
    @communication = Communication.new(cammunication_params)
    if @communication.save
    redirect_to "/games/#{@communication.game.id}"
    else
      render "/games/#{game.id}"
    end
  end

  private
  def cammunication_params
    params.require(:communication).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end
end
