class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :edit, :update, :destroy]

  def index
    @fights = Fight.all
  end

  def show
  end

  def new
    @fight = Fight.new
  end

  def create
    @fight = Fight.new(fight_params)
    player = Fighter.find(fight_params[:fighter_id])
    player_2 = Fighter.find(fight_params[:fighter_2_id])

    a = sum(player)
    b = sum(player_2)
      if a >= b
        flash[:success] = player.name + ' wins'
        player.win += 1
        player_2.lose += 1
        player.experience += 20
        player_2.experience += 10
        @fight.winner_id = fight_params[:fighter_id]
      else
        flash[:success] = player_2.name + ' wins'
        player_2.win += 1
        player.lose += 1
        player.experience += 10
        player_2.experience += 20
        @fight.winner_id = fight_params[:fighter_2_id]
      end
    # end
    player.fights_count += 1
    player_2.fights_count += 1
    @fight.save
    player.save
    player_2.save
    redirect_to fights_path
  end

  def edit
  end

  private

  def sum(fighter)
    s = 0
    fighter.skills.each do |skill|
      s += skill.value
      s += fighter.experience * 2
    end
    return s
  end

  def fight_params
    params.require(:fight).permit(:fighter_id, :fighter_2_id, :winner_id)
  end

  def set_fight
    @fight = Fight.find(params[:id])
  end
end
