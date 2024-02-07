module DataSource
  require 'uri'
  require 'net/http'

  class DataSourceBase
    def self.search(query)
      url = URI(source_url(query))
      
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(source_url(query))
      request["accept"] = 'application/json'
      
      response = JSON.parse(http.request(request).body)
      response['results']
    end
  end
end