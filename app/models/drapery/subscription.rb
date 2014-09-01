module Drapery
  class Subscription < ActiveRecord::Base
    attr_accessible :email

    validate :email, presence: true, uniqueness: true
  end
end
