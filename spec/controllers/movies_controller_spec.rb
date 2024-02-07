require 'rails_helper'

RSpec.describe(MoviesController, type: :controller) do
  it 'calls the MovieDb.search method' do
    allow(MovieDb).to receive(:search).with('The Matrix').and_return([{something: 'testing'}])
    get :index, params: { q: 'The Matrix' }

    expect(response.body).to eq([{something: 'testing'}].to_json)
  end
end