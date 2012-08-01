require 'spec_hepler'
describe EventsController do
	render_views
	describe "GET 'index'" do
		it "should have the right title" do
			get :index
			response.should have_selector("title", :content => "Events")
		end
		
		it "should be successful" do
			get :index
			response.should be_success
		end
		
		it "should have content for each event" do
			get :index
			@events.each do |event|
				response.should have_selector("li", :content => event.event)
			end
		end
	end
end