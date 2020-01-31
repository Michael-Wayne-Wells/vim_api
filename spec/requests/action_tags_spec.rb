require 'rails_helper'

RSpec.describe "ActionTags", type: :request do
  describe "GET /action_tags" do
    it "works! (now write some real specs)" do
      get action_tags_path
      expect(response).to have_http_status(200)
    end
  end
end
