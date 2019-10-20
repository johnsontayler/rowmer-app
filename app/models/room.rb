class Room < ApplicationRecord
  belongs_to :property

  has_many :journeys
end
