require 'rails_helper'

RSpec.describe "Tippees", type: :request do
  describe "GET /tippees" do
    it "works! (now write some real specs)" do
      get tippees_path
      expect(response).to have_http_status(200)
    end
  end
end
