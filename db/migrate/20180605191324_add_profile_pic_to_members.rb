class AddProfilePicToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :profile_pic, :json
  end
end
