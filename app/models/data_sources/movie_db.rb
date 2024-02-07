require '/Users/alexanderlam/Documents/cm/movie_search/app/models/data_sources/data_source_base.rb'

module DataSource
  class MovieDb < DataSourceBase
    def self.source_url(query)
      "https://api.themoviedb.org/3/search/movie?api_key=a99cc60fc2b34dbb18cb806b8a88ed14&query=#{query}"
    end
  end
end