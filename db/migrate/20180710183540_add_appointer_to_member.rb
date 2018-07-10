class AddAppointerToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :appointer, :string
  end
end
