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
      expect(parsed_body['login']).to eq(true)
      expect(parsed_body['name']).to eq('sample_name')
    end
  end

  describe 'show friend list' do
    before do
      @user = User.new(name: 'sample2', password: 'sample_password2')
      @user.save
      @user.talk.create! content: 'hellllooooo', friendid: ''
    end
    it 'returns http success' do
      puts 'sample log output'
    end
  end
end
