# frozen_string_literal: true

module Api
  module User
    class LoginController < ActionController::Base
      protect_from_forgery with: :exception

      def index
        render json: { 'sample' => 10 }
      end
    end
  end
end
