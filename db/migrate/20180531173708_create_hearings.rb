class CreateHearings < ActiveRecord::Migration[5.1]
  def change
    create_table :hearings do |t|
      t.datetime :date_of_hearing
      t.string :location_of_hearing
      t.string :transcript_url
      t.text :hearing_content
      t.json :hearing_attachments
      t.timestamps
    end
  end
end
