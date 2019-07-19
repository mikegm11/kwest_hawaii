class Meal < ApplicationRecord
    
    has_many :meal_groups, :dependent => :destroy
    
end
