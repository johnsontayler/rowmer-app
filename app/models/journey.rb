class Journey < ApplicationRecord
  belongs_to :room
  belongs_to :buyer, class_name: 'User', foreign_key: :buyer_id
end
