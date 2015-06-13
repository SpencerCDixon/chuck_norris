module ChuckNorris
  class Joke
    attr_reader :id, :joke, :categories
    def initialize(attrs)
      @id = attrs["id"]
      @joke = attrs["joke"]
      @categories = attrs["categories"]
    end
  end
end
