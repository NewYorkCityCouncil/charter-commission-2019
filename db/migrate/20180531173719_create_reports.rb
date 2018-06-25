class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :language
      t.string :file_url
      t.integer :month
      t.integer :order
      t.json :report_attachments
      t.timestamps
    end
  end
end
