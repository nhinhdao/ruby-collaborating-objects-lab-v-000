require'pry'
class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        # binding.pry
        @files = Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/","")}
        @files
    end

    def import
        files.each {|filename| Song.new_by_filename(filename)}
    end
end
