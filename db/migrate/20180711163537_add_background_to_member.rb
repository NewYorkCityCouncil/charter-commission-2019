class AddBackgroundToMember < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :background, :string
  end
end
