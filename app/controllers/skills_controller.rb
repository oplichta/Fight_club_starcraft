class SkillsController < ApplicationController
  before_action :set_fighter

  def create
    @skill = @fighter.skills.build(skill_params)

    if @skill.save
      flash[:success] = 'Yours skill has beed added.'
      redirect_to :back
    else
      flash[:alert] = 'Check the skill form, something went horribly wrong.'
      render root_path
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :value)
  end

  def set_fighter
    @fighter = Fighter.find(params[:fighter_id])
  end
end
