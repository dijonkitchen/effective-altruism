class User < ApplicationRecord
  has_secure_password
  has_many :donations

  def donated
    donations.sum(:amount)
  end

  def left_to_donate
    [annual_income * pledge_percentage - donated, 0].max
  end
end
