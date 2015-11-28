require 'rails_helper'

RSpec.describe "Yonkomas", type: :request do
  describe "GET /yonkomas" do
    it "works! (now write some real specs)" do
      get yonkomas_path
      expect(response).to have_http_status(200)
    end
  end
end
