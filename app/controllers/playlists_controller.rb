class PlaylistsController < ApplicationController
  def index
    playlists = Playlist.where(user: current_user)
    render json: playlists
  end
end
