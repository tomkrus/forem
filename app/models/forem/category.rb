require 'friendly_id'

module Forem
  class Category < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]

    has_many :forums
    validates :name, :presence => true

    def to_s
      name
    end
    
    acts_as_list scope: :position
  end
end
