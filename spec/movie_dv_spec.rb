require 'rails_helper'
require '/Users/alexanderlam/Documents/cm/movie_search/app/models/data_sources/movie_db.rb'

describe "MovieDbSpec" do
  it 'should find movies by title' do
    VCR.use_cassette("movie_db_search") do
      movie = DataSource::MovieDb.search('The Matrix')

      movie[0]['original_title'].should == 'The Matrix'
      movie[0]['title'].should == 'The Matrix'
    end
  end
end
