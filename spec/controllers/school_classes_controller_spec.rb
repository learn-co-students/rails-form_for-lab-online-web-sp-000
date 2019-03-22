require 'rails_helper'

if RUBY_VERSION>="2.6.0"
 if Rails.version < "5"
   class ActionController::TestResponse < ActionDispatch::TestResponse
     def recycle!
       # hack to avoid MonitorMixin double-initialize error:
       @mon_mutex_owner_object_id = nil
       @mon_mutex = nil
       initialize
     end
   end
 else
   puts "Monkeypatch for ActionController::TestResponse no longer needed"
 end
end

describe SchoolClassesController do

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new school_class" do
        expect{
          post :create, { :school_class => { :title => "Computer Science", :room_number => 5 } }
        }.to change(SchoolClass,:count).by(1)
      end

      it "redirects to the new school_class" do
        post :create, { :school_class => { :title => "Computer Science", :room_number => 5 } }
        expect(response).to redirect_to SchoolClass.last
      end
    end
  end



end
