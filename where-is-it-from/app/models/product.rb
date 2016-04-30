class Product < ActiveRecord::Base
  has_many :origins
  belongs_to :brand
end
