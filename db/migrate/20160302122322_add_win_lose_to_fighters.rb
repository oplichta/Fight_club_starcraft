class AddWinLoseToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :win, :integer
    add_column :fighters, :lose, :integer
  end
end
