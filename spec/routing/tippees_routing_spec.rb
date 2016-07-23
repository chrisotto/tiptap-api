require "rails_helper"

RSpec.describe TippeesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tippees").to route_to("tippees#index")
    end

    it "routes to #new" do
      expect(:get => "/tippees/new").to route_to("tippees#new")
    end

    it "routes to #show" do
      expect(:get => "/tippees/1").to route_to("tippees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tippees/1/edit").to route_to("tippees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tippees").to route_to("tippees#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tippees/1").to route_to("tippees#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tippees/1").to route_to("tippees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tippees/1").to route_to("tippees#destroy", :id => "1")
    end

  end
end
