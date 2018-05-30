class Project < ApplicationRecord
	has_many :todos
	has_and_belongs_to_many :users
end
