class SchoolClass < ActiveRecord::Base

    def full_detail
        self.title + " - " + self.room_number
    end
end