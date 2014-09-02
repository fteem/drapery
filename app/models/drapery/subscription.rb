module Drapery
  class Subscription < ActiveRecord::Base
    attr_accessible :email

    validate :email, presence: true
    validate :email, uniqueness: { message: "already in our database" }
  end
end
