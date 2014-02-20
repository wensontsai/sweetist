class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :address
      t.string :website
      t.integer :phone

      t.timestamps
    end
  end
end
