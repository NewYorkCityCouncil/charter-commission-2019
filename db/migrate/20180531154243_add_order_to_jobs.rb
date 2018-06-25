class AddOrderToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :order, :integer
  end
end
