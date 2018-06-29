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
        song = self.new
        song.name = filename.split(/\ - /)[1]
        # self.artist.name = filename.split(/\ - /)[0]
        song
    end
end
