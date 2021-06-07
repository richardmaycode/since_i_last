class CreateWatches < ActiveRecord::Migration[6.1]
  def change
    create_table :watches do |t|
      t.string :title
      t.string :icon
      t.integer :color
      t.datetime :executed

      t.timestamps
    end
  end
end
