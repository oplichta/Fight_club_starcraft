class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.references :fighter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
