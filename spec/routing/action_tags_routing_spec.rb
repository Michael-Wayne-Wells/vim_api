require "rails_helper"

RSpec.describe ActionTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/action_tags").to route_to("action_tags#index")
    end

    it "routes to #show" do
      expect(:get => "/action_tags/1").to route_to("action_tags#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/action_tags").to route_to("action_tags#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/action_tags/1").to route_to("action_tags#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/action_tags/1").to route_to("action_tags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/action_tags/1").to route_to("action_tags#destroy", :id => "1")
    end
  end
end
