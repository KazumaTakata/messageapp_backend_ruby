# frozen_string_literal: true

module Api
  module User
    class LoginController < ActionController::Base
      protect_from_forgery with: :exception
      include ApplicationHelper
      before_action :sample_helper

      def index
        req_data = JSON.parse(request.body.read)
        name = req_data['name']
        password = req_data['password']
        user = ::User.new(name: name, password: password)
        user.save
        payload = { 'id' => user.id.to_s }
        token = jwtencode(payload)

        returnobj = { login: true, token: token, id: user.id.to_s, name: name }

        render json: returnobj
      end
    end
  end
end
