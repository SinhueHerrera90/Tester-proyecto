# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  address     :string
#  image       :string
#  name        :string
#  website     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  activity_id :integer
#
class Location < ApplicationRecord
  
  belongs_to(:activity, { :required => true, :class_name => "Activity", :foreign_key => "activity_id" })
  has_many(:posts, { :class_name => "Post", :foreign_key => "location_id" })

end
