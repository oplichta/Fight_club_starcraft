class AddFightsCountToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :fights_count, :integer
  end
end
