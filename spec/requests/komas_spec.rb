require 'rails_helper'

RSpec.describe "Komas", type: :request do
  describe "GET /komas" do
    it "works! (now write some real specs)" do
      get komas_path
      expect(response).to have_http_status(200)
    end
  end
end
