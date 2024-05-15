# frozen_string_literal: true

class Search
  include Mongoid::Document
  include Mongoid::Timestamps
  field :image_url, type: String
  field :image_description, type: String
end
