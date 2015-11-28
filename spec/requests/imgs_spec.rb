require 'rails_helper'

RSpec.describe "Imgs", type: :request do
  describe "GET /imgs" do
    it "works! (now write some real specs)" do
      get imgs_path
      expect(response).to have_http_status(200)
    end
  end
end
