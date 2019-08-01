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
# has_and_belongs_to_many = many-to-many connection

# has_many = one-to-many connection

# belongs_to =

# has_one = one-to-one
class Resort < ApplicationRecord
has_and_belongs_to_many:customers
has_many :tickets
has_many :instructors
has_many :restaurants
end
