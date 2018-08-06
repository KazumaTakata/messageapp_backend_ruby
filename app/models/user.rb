# frozen_string_literal: true

class User
  include Mongoid::Document
  field :name, type: String
  field :password, type: String

  embeds_many :talk
end
