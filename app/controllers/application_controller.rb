require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do
  erb :new
end

post '/team' do
  @team = Team.new(params[:team])

  params[:team][:hero].each do |details|
    Hero.new(details)
  end

  @ships = Ship.all
end

end
