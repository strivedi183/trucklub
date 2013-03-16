# == Schema Information
#
# Table name: trucks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  twitter     :string(255)
#  phone       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Truck < ActiveRecord::Base
  has_one :user, :as => :userable
end
