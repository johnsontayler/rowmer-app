class Property < ApplicationRecord
  has_many :rooms
  has_many :tenants, through: :rooms, class_name: 'User', foreign_key: :tenant_id
end
