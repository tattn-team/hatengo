require "rails_helper"

RSpec.describe YonkomasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/yonkomas").to route_to("yonkomas#index")
    end

    it "routes to #new" do
      expect(:get => "/yonkomas/new").to route_to("yonkomas#new")
    end

    it "routes to #show" do
      expect(:get => "/yonkomas/1").to route_to("yonkomas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/yonkomas/1/edit").to route_to("yonkomas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/yonkomas").to route_to("yonkomas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/yonkomas/1").to route_to("yonkomas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/yonkomas/1").to route_to("yonkomas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/yonkomas/1").to route_to("yonkomas#destroy", :id => "1")
    end

  end
end
