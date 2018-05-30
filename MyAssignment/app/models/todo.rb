class Todo < ApplicationRecord
	validates_inclusion_of :status, :in => %w( new in-progress done )
	validates_associated :project
	belongs_to :project
	belongs_to :user
end