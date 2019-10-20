class Room < ApplicationRecord
  belongs_to :property
  
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  belongs_to :tenant, class_name: 'User', foreign_key: :tenant_id
  belongs_to :agent, class_name: 'User', foreign_key: :agent_id

  has_many :journeys
end
