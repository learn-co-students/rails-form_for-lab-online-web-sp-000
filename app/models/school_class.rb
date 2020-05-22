class SchoolClass < ActiveRecord::Base
    def to_line
        self.title + " " + self.room_number.to_s
    end
end