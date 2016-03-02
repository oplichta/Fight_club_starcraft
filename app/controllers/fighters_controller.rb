class FightersController < ApplicationController
  def index
    @fighters = Fighter.all.order('created_at DESC')
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.new(fighter_params)
    @fighter.experience = 0
    @fighter.win = 0
    @fighter.lose = 0
    @fighter.save
    redirect_to @fighter
  end

  def show
    @fighter = Fighter.find(params[:id])
  end

  private

  def fighter_params
    params.require(:fighter).permit(:name, :last_name, :description, :image)
  end
end
