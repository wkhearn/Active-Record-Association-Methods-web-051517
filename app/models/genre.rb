require "pry"

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    self.artist_ids.length
  end

  def all_artist_names
    self.songs.map {|song| song.artist.name}
  end
end
