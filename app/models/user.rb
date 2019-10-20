class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #buyer
  has_many :journeys

  #owner, tenant, agent
  has_many :rooms, foreign_key: :owner_id
  has_many :rooms, foreign_key: :tenant_id
  has_many :rooms, foreign_key: :agent_id

  #property manager
  has_many :properties, foreign_key: :property_manager_id
end
