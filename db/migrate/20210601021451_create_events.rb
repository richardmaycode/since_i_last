class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :icon
      t.datetime :date
      t.string :eventable_type
      t.bigint :eventable_id

      t.timestamps
    end

    add_index :events, [:eventable_type, :eventable_id]
  end
end
