# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  userable_id     :integer
#  userable_type   :string(255)
#  is_admin        :boolean          default(FALSE)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password
  belongs_to :userable, :polymorphic => true
  validates :name, :email, :presence => true

  def is_truck?
    self.userable if self.userable.is_a?(Truck)
  end

  def is_eater?
    self.userable if self.userable.is_a?(Eater)
  end

end
