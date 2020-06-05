require 'rails_helper'

RSpec.describe SchoolClass, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe SchoolClass do
    before(:each) do
      @school_class = SchoolClass.create!(title: "Software Engineering 110", room_number: 110)
    end
  
    it 'can be created' do
      expect(@school_class).to be_valid
    end
  
  end
end
