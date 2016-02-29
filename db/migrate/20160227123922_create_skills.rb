class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.references :fighter, index: true, foreign_key: true
      t.string :name
      t.integer :value

      t.timestamps null: false
    end
  end
end
