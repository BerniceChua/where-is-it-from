class Brand < ActiveRecord::Base
  has_many :products, :origins

end
