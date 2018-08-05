# frozen_string_literal: true

require 'jwt'

module ApplicationHelper
  def jwtencode(payload)
    token = JWT.encode(payload, 'secret', 'HS256')
    token
  end

  def jwtdecode(token)
    JWT.decode token, 'secret', true, algorithm: 'HS256'
end
end
