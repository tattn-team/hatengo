require "rails_helper"

RSpec.describe KomasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/komas").to route_to("komas#index")
    end

    it "routes to #new" do
      expect(:get => "/komas/new").to route_to("komas#new")
    end

    it "routes to #show" do
      expect(:get => "/komas/1").to route_to("komas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/komas/1/edit").to route_to("komas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/komas").to route_to("komas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/komas/1").to route_to("komas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/komas/1").to route_to("komas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/komas/1").to route_to("komas#destroy", :id => "1")
    end

  end
end
