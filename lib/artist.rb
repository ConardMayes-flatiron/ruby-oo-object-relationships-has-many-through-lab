require "pry"

class Artist
    attr_accessor :name, :genre, :song

    @@all =[]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |track|
            track.artist == self
        end
    end

    def genres
        # binding.pry
        self.songs.map do |track|
            track.genre
        end
    end
        




end