class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :position
      t.integer :number_of_positions
      t.string :open_date
      t.string :close_date
      t.text :duties_and_responsibilities
      t.text :responsibilities
      t.text :requirements
      t.string :attention
      t.string :council_url

      t.timestamps
    end
  end
end
