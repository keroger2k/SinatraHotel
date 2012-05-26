module Hotel
  class App < Sinatra::Base
 		get "/" do
      		"Hello world, it's #{Time.now} at the server!"
    	end
 	end
end