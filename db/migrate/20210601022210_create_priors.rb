class CreatePriors < ActiveRecord::Migration[6.1]
  def change
    create_table :priors do |t|

      t.timestamps
    end
  end
end
