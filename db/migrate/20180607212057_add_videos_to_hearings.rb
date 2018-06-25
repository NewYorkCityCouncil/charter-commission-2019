class AddVideosToHearings < ActiveRecord::Migration[5.1]
  def change
    add_column :hearings, :youtube_url, :string, :default => nil
    add_column :hearings, :livestream_embed, :string, :default => nil
  end
end
