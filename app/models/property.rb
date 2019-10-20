class Property < ApplicationRecord
  belongs_to :property_manager, class_name: 'User', foreign_key: :property_manager_id

  has_many :rooms
  has_many :tenants, through: :rooms, class_name: 'User', foreign_key: :tenant_id
  has_many :reviews
end
