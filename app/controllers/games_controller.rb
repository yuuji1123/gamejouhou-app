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

  def show
    @game = Game.find(params[:id])
    @communication = Communication.new
    @communications = @game.communications.includes(:user)
  end

  def edit
    @game = Game.find(params[:id])
    if @game.user_id == current_user.id 
    else
      redirect_to root_path
    end
  end

  def update
    @game.update(game_params)
    # バリデーションがOKであれば詳細画面へ
    if @game.valid?
      redirect_to game_path(game_params)
    else
      # NGであれば、エラー内容とデータを保持したままeditファイルを読み込み、エラーメッセージを表示させる
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])
    if @game.user_id == current_user.id
      @game.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def game_params
    params.require(:game).permit(:title, :category_id, :point_id, :time, :comment).merge(user_id: current_user.id)
  end

end
