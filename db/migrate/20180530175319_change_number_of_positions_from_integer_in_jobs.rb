class ChangeNumberOfPositionsFromIntegerInJobs < ActiveRecord::Migration[5.1]
  def change
    change_column :jobs, :number_of_positions, :string
  end
end
