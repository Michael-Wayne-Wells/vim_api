require 'rails_helper'

describe "post cheatsheet route", :type => :request do

  before do
    post '/cheat_sheets', params: { :key_stroke => 'test_key_stroke', :result=> 'test_action' }
  end

  it 'returns the key stroke' do
    expect(JSON.parse(response.body)['key_stroke']).to eq('test_key_stroke')
  end

  it 'returns the action content' do
    expect(JSON.parse(response.body)['result']).to eq('test_action')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
