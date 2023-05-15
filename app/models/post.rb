# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  activity_id :integer
#  location_id :integer
#
class Post < ApplicationRecord

  belongs_to(:activity, { :required => true, :class_name => "Activity", :foreign_key => "activity_id" })
  belongs_to(:location, { :required => true, :class_name => "Location", :foreign_key => "location_id" })

end
