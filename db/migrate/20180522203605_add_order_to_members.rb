class AddOrderToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :order, :integer
  end
end
