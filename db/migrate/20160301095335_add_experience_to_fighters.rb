class AddExperienceToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :experience, :integer
  end
end
