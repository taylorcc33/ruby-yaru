module Yaru
  class Store
    attr_reader :file, :todos

    DEFAULT_FILE_LOC = "~/Desktop/test.txt"

    def initialize(file = DEFAULT_FILE_LOC)
      @file = file
      @todos = []
    end

    def add(item)
      File.open(File.expand_path(@file), "a") { |file| file.puts item}
    end

  end
end