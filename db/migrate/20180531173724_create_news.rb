class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title
      t.string :publication_date
      t.string :publication
      t.string :contact_info
      t.text :news_content
      t.integer :order
      t.json :news_attachments
      t.string :news_type, :default => "press_release"
      t.timestamps
    end
  end
end
