require 'rails_helper'

describe "get all cheat sheets route" do 
  before { get '/cheat_sheets'}

  it 'returns all chaet sheets' do
    expect(JSON.parse(response.body).size).to eq(40)
  end

 end
