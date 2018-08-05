# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::User::LoginController, type: :controller do
  describe 'GET #index' do
    before do
      post :index
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end
end
