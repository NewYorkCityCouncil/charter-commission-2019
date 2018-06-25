class AddOrderToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :order, :integer
  end
end
