class User < ApplicationRecord
  devise :database_authenticatable, :trackable, :validatable

  belongs_to :role, optional: true
  has_and_belongs_to_many :projects

end