class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|

      t.integer :zipcodes

      t.timestamps
    end
  end
end
