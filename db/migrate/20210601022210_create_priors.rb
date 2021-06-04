class CreatePriors < ActiveRecord::Migration[6.1]
  def change
    create_table :priors do |t|
      t.datetime :last_execution, null: false
      t.timestamps
    end
  end
end
