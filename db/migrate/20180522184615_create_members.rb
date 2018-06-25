class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :role
      t.text :bio
      t.string :image_url, :default => "default.jpg"

      t.timestamps
    end
  end
end
