module ChuckNorris
  module Utility
    API_URI = 'http://api.icndb.com'

    def execute(method, path, options={})
      options = sanitize_options(options)
      url = API_URI + path + options
      response = RestClient::Request.execute(method: method, url: url)
      JSON.parse(response)
    end

    def sanitize_options(options)
      return '' if options.empty?
      final = {}
      final[:firstName] = options.fetch(:first_name, 'Chuck')
      final[:lastName] = options.fetch(:last_name, 'Norris')
      to_query(final)
    end

    def to_query(hash)
      query = '?'
      hash.each {|k, v| query << "#{k}=#{v}&" }
      query.chop
    end
  end
end
