class AddAddressCellPhoneToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :address, :string, :default => nil
    add_column :comments, :cell, :string, :default => nil
    add_column :comments, :phone, :string, :default => nil
  end
end
