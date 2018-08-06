# frozen_string_literal: true

class Talk
  include Mongoid::Document
  field :content, type: String
  field :friendid, type: String

  embedded_in :user
end
