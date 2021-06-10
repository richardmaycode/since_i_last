class CreateOutcomes < ActiveRecord::Migration[6.1]
  def change
    create_table :outcomes do |t|
      t.datetime :started, null: false
      t.datetime :executed, null: false
      t.integer :goal, null: false, default: 0
      t.integer :goal_type, null: false, default: 0
      t.belongs_to :watch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
