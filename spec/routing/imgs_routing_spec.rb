require "rails_helper"

RSpec.describe ImgsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/imgs").to route_to("imgs#index")
    end

    it "routes to #new" do
      expect(:get => "/imgs/new").to route_to("imgs#new")
    end

    it "routes to #show" do
      expect(:get => "/imgs/1").to route_to("imgs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/imgs/1/edit").to route_to("imgs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/imgs").to route_to("imgs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/imgs/1").to route_to("imgs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/imgs/1").to route_to("imgs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/imgs/1").to route_to("imgs#destroy", :id => "1")
    end

  end
end
