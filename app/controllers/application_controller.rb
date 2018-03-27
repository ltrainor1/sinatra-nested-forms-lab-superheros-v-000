require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do 
  erb :team 
end 

post '/team' do 
  erb :hero 
end 

end
