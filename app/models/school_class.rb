class SchoolClass < ActiveRecord::Base
    def listing
        self.title + " - " + self.room_number.to_s
    end
end
