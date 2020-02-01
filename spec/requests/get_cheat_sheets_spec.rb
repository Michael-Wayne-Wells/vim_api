# frozen_string_literal: true

require 'rails_helper'

describe 'get all cheat sheets route' do
  before { get '/cheat_sheets' }

  it 'returns all cheat sheets' do
    expect(JSON.parse(response.body).size).to eq(40)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
