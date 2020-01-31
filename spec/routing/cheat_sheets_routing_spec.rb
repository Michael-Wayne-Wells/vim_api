require "rails_helper"

RSpec.describe CheatSheetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cheat_sheets").to route_to("cheat_sheets#index")
    end

    it "routes to #show" do
      expect(:get => "/cheat_sheets/1").to route_to("cheat_sheets#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cheat_sheets").to route_to("cheat_sheets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cheat_sheets/1").to route_to("cheat_sheets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cheat_sheets/1").to route_to("cheat_sheets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cheat_sheets/1").to route_to("cheat_sheets#destroy", :id => "1")
    end
  end
end
