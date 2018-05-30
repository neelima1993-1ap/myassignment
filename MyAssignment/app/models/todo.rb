=beginclass Todo < ApplicationRecord
	has_and_belongs_to_many :projects
end
=end

class Todo < ApplicationRecord
	belongs_to :project
end