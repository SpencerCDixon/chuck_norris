require 'chuck_norris/utility'

module ChuckNorris
  class JokeFinder
    extend Utility

    def self.get_joke(options={})
      response = execute(:get, '/jokes/random/', options)
      Joke.new(response["value"])
    end

    def self.get_jokes(num, options={})
      response = execute(:get, "/jokes/random/#{num}", options)
      response["value"].map { |args| Joke.new(args) }
    end

    def self.joke_categories
      response = execute(:get, "/categories")
      response["value"]
    end

    def self.joke_count
      response = execute(:get, "/jokes/count")
      response["value"]
    end

    def self.find_joke(id)
      response = execute(:get, "/jokes/#{id}")
      Joke.new(response["value"])
    end
  end
end
