require'pry'
class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def name=(name)
        @name = name
    end

    def artist= (artist)
        @artist = artist
    end

    def self.new_by_filename(filename)
        # binding.pry
        song = Song.new(filename.split(/\ - /)[1])
        song.artist = Artist.create(filename.split(/\ - /)[0])
        # self.artist.uniq
        song
    end
end
