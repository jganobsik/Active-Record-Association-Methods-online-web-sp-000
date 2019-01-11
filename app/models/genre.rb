class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
        self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    artist_list = []
    song_list = self.songs  
    song_list.each  do |s|
      artist_list.include? s.artist ? artist_list << s.artist
    end
  end

  def all_artist_names
    # return an array of strings containing every musician's name
  end
end
