class ChangecolumnCartitems < ActiveRecord::Migration
  def change
    rename_column :cart_items, :cart_id, :user_id
  end
end
