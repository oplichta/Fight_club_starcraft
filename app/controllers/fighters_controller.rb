class FightersController < ApplicationController
  def index
    @fighters = Fighter.all.order('created_at DESC')
  end

  def new
    @fighter = Fighter.new
  end

  def create
    @fighter = Fighter.create(fighter_params)
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
