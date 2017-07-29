class User < ApplicationRecord
  has_secure_password
  has_many :donations

  def donated
    donations.sum(:amount)
  end
end
