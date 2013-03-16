# == Schema Information
#
# Table name: eaters
#
#  id         :integer          not null, primary key
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eater < ActiveRecord::Base
  has_one :user, :as => :userable
end
