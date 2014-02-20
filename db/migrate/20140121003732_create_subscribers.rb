class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :website
      t.text :message

      t.timestamps
    end
  end
end
