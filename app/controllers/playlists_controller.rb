class PlaylistsController < ApplicationController
  def index
    playlists = Playlist.where(user: current_user)
    render json: playlists, include: { resources: {except: []} }
  end

  def create
    playlist = Playlist.create(name: playlist_params[:name], user: current_user)
    render json: playlist
  end

  def update
    case params[:update]
    when "add resource"
      playlist = Playlist.find_by(id: params[:id])
      resource = Resource.find_by(id: params[:resource_id])
      if playlist && resource && playlist.user_id == current_user.id && !playlist.resources.include?(resource)
        playlist.resources << resource
        render json: { message: "resource added to playlist" }
      else
        render json: { message: "unable to add resource to playlist" }
      end
    end
  end

  private
  def playlist_params
    params.permit(:name)
  end
end
