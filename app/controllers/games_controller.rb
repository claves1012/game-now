class GamesController < ApplicationController
  before_action :authenticate_user!,only:[:new, :create, :edit, :update, :destroy]
  before_action :set_game, only:[:show, :edit, :update, :destroy]
  before_action :move_to_index, only:[:edit, :update, :destroy]

  def index
    @game = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      params[:game][:images].each do |image|
        @game.images.create(url: image)
      end
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    redirect_to root_path
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless current_user.id == @game.user_id
  end

  def game_params
    params.require(:game).permit(:title, :text, :images, :genre_id, :os_id, :price).merge(user_id: current_user.id)
  end
end
