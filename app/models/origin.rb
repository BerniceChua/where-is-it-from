class Origin < ActiveRecord::Base
  belongs_to :product, :brand
end
