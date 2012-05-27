module Hotel
	class App < Sinatra::Base

		register Mustache::Sinatra

		dir = File.dirname(File.expand_path(__FILE__))

		set :public_folder, "#{dir}/frontend/public"
    set :static, true
    set :mustache, {
      :namespace => Hotel,
      :templates => "#{dir}/templates",
      :views => "#{dir}/views"
    }
	
		get "/" do
			content_type :html
			mustache :index
		end

		get "/about" do
			content_type :html
			mustache :about
		end

		get "/contact" do
			content_type :html
			mustache :contact
		end

		get "/properties" do
			content_type :html
			mustache :properties
		end

		get "/services" do
			content_type :html
			mustache :services
		end

		get "/staff" do
			content_type :html
			mustache :staff
		end

		not_found do
  			redirect '/404.html'
		end

	end
end