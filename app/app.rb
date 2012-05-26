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

	end
end