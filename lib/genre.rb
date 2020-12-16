
class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |track|
            track.genre == self
        end
    end

    def artists
        self.songs.map do |track|
            track.artist
        end
    end










end