class AddFighteridToFights < ActiveRecord::Migration
  def change
    add_column :fights, :fighter_2_id, :integer
    add_column :fights, :winner_id, :integer
  end
end
