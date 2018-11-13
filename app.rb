require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new' <a href = '/new'>click here</a>"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_info|
        Ship.new(ship_info)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end
  end
end
