class AddProfilePicToStaff < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :profile_pic, :json
  end
end
