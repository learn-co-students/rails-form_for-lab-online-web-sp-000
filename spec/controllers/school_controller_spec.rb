require 'rails_helper'

RSpec.describe SchoolController, type: :controller do

  describe "GET #Classes" do
    it "returns http success" do
      get :Classes
      expect(response).to have_http_status(:success)
    end
  end

end
