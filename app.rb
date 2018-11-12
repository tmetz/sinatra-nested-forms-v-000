require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the <a href = '/new'>'/new'</a>"
    end

    get "/new" do
      erb :new
    end

    post "/pirates" do

    end
  end
end
