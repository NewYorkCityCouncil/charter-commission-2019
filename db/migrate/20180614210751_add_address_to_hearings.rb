class AddAddressToHearings < ActiveRecord::Migration[5.1]
  def change
    add_column :hearings, :address_1, :string
    add_column :hearings, :address_2, :string
    add_column :hearings, :city, :string
    add_column :hearings, :zip_code, :integer
    add_column :hearings, :google_maps_url, :string
  end
end
