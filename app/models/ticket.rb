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

belongs_to :resort, :optional => true
has_and_belongs_to_many :customers
has_and_belongs_to_many :instructors

end
