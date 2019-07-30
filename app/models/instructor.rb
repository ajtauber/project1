# == Schema Information
#
# Table name: instructors
#
#  id              :bigint           not null, primary key
#  instructor_id   :integer
#  instructor_name :text
#  salary          :float
#  resort_name     :text
#  level           :integer
#  resort_id       :integer
#  customer_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Instructor < ApplicationRecord
end
