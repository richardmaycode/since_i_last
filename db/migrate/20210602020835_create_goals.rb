class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.integer :amount
      t.integer :unit
      t.belongs_to :prior, null: false, foreign_key: true

      t.timestamps
    end
  end
end
