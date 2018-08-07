class User < ApplicationRecord
  has_many :deliveries

  attr_accessor :name, :email

  scope :active, -> { where(active: true) }
end
