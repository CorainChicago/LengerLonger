class User < ActiveRecord::Base
  has_one :profile
  before_create :build_profile

  has_secure_password
  
end
