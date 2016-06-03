class Product < ActiveRecord::Base

		has_many :brands
      has_many :categories, :through => :brands

      belongs_to :user

end
