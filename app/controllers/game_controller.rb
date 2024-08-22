class GameController < ApplicationController
  def index
    @game = Game.all
  end

  def create
  end
end
