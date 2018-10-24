class Step < ApplicationRecord
  belongs_to :pose

  def side
  	if self.direction == 1
  		return "Right"
  	elsif self.direction == -1
  		return "Left"
  	else
  		return nil
  	end
  end

  def name
  	pose_name = self.pose.english_name + " (" + self.pose.sanskrit_name+ ") "
  	if self.side
  		pose_name = pose_name + " - " + self.side + " Side"
  	end
  	return pose_name
  end

end
