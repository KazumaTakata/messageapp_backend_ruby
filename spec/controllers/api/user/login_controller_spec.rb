# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::User::LoginController, type: :controller do
  describe 'login post #index' do
    before do
      post :index, body: { name: 'sample_name', password: 'sample_password' }.to_json, format: :json
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
      parsed_body = JSON.parse(response.body)
      parsed_body['login'].should = true
      parsed_body['name'].should = 'sample_name'
    end
  end
end
