require'pry'
class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def name=(name)
        @name = name
    end

    def artist_name= (artist)
        self.artist = Artist.find_or_create_by_name(artist)
        binding.pry
    end

    def self.new_by_filename(filename)
        # binding.pry
        song = Song.new(filename.split(/\ - /)[1])
        song.artist_name = filename.split(/\ - /)[0]

        # self.artist.uniq
        song
    end
end
