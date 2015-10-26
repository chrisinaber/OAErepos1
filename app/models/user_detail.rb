class UserDetail < ActiveRecord::Base
  attr_accessible :crypted_password, :login, :salt
end
