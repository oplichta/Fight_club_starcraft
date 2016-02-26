class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :last_name
      t.string :description

      t.timestamps null: false
    end
  end
end
