class AddBoroughToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :borough, :string
  end
end
