# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Activity < ApplicationRecord
  has_many(:posts, { :class_name => "Post", :foreign_key => "activity_id" })
  has_many(:locations, { :class_name => "Location", :foreign_key => "activity_id" })
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

end
