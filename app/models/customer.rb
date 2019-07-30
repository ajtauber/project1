# == Schema Information
#
# Table name: customers
#
#  id              :bigint           not null, primary key
#  customer_id     :integer
#  name            :text
#  address         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :text
#  password_digest :string
#

class Customer < ApplicationRecord
  has_secure_password
end
