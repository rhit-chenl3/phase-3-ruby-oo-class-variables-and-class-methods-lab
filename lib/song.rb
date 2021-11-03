class Song
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre
  
    def initialize(name, artist, genre)
      @@count += 1
      @name = name
      @artist = artist
      @genre = genre
      @@genres << genre
      @@artists << artist
    end
  
    def self.count
      @@count
    end
  
    def self.artists
      @@artists.uniq
    end
  
    def self.genres
      @@genres.uniq
    end
  
    def self.genre_count
      # genres = {}
      # @@genres.each do |genre|
      #   genres[genre] = genres.include?(genre) ? genres[genre] + 1 : 1
      # end
      # genres
      @@genres.tally
    end
  
    def self.artist_count
      # artists = {}
      # @@artists.each do |artist|
      #   artists[artist] = artists.include?(artist) ? artists[artist] + 1 : 1
      # end
      # artists
      @@artists.tally
    end

end