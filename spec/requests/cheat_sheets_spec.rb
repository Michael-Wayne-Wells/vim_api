require 'rails_helper'

RSpec.describe "CheatSheets", type: :request do
  describe "GET /cheat_sheets" do
    it "works! (now write some real specs)" do
      get cheat_sheets_path
      expect(response).to have_http_status(200)
    end
  end
end
