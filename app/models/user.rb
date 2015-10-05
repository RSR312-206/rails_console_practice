class User < ActiveRecord::Base
  validates :first_name, :last_name,
  presence: true,
  length: {minimum: 4}

end
