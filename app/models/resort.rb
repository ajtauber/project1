# == Schema Information
#
# Table name: resorts
#
#  id            :bigint           not null, primary key
#  resort_id     :integer
#  name          :text
#  height        :integer
#  lifts         :integer
#  location      :text
#  runs          :integer
#  image         :text
#  customer_id   :integer
#  instructor_id :integer
#  ticket_id     :integer
#  restaurant_id :integer
#  rental_id     :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Resort < ApplicationRecord
end
