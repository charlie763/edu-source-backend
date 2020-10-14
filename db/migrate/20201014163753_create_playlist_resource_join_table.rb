class CreatePlaylistResourceJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :playlists, :resources do |t|
      t.index [:playlist_id, :resource_id]
      t.index [:resource_id, :playlist_id]
    end
  end
end
