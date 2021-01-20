require 'pry'

class Song
    attr_accessor :name, :artist, :genre  

    @@count = 0 
    @@artists = []
    @@genres = []

    
    def initialize(name, artist, genre)
        @@count += 1 
        @@artists << artist 
        @@genres << genre 
        @name = name 
        @artist = artist 
        @genre = genre 
    end 

    def self.count 
        @@count
    end 

    def self.artists 
        array = []
        @@artists.each do |artist|
            if !array.include?(artist) 
                array << artist 
            end 
        end 
        array 
    end 

    def self.genres
        array = []
        @@genres.each do |genre|
            if !array.include?(genre)
                array << genre 
            end 
        end 
        array
    end 

    def self.genre_count 
        hash = {}
        @@genres.each do |genre|
            if !hash.include?(genre)
                hash[genre] = @@genres.count(genre)
            end 
        end 
         hash 
    end 

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if !hash.include?(artist)
                hash[artist] = @@artists.count(artist)
            end 
        end
        hash
    end  

end 