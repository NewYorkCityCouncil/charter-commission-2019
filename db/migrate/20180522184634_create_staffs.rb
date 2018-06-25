class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :role
      t.text :bio
      t.string :image_url

      t.timestamps
    end
  end
end
