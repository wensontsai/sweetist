class ChangecolumnCartitems2 < ActiveRecord::Migration
  def change
    rename_column :cart_items, :user_id, :order_id
  end
end
