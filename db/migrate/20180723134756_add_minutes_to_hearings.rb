class AddMinutesToHearings < ActiveRecord::Migration[5.1]
  def change
    add_column :hearings, :minutes, :string
  end
end
