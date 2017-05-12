class Pose < ApplicationRecord
	belongs_to :modification_of, optional: true, :class_name => 'Pose', :foreign_key => 'modification_of_id'
end
