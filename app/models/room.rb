class Room < ApplicationRecord
    has_many :room_assignments, :dependent => :destroy
end
