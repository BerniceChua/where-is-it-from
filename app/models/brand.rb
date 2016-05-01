class Brand < ActiveRecord::Base
  has_many :products
  has_many :origins
end
