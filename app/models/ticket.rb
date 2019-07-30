# == Schema Information
#
# Table name: tickets
#
#  id          :bigint           not null, primary key
#  ticket_id   :integer
#  price       :float
#  expiry_date :date
#  duration    :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ticket < ApplicationRecord
end
