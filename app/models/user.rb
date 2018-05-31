class User < ApplicationRecord
  devise :database_authenticatable, :trackable, :validatable

  belongs_to :role, optional: true
  has_and_belongs_to_many :projects
  has_many :todos

  def self.developers
  	User.where(role_id: 2)
  end

  def user_role
      self.role_id == 1 ? 'admin' : 'developer'
  end

end