require "sinatra"

get "/random/fish" do
  "I see #{rand(20)} fish!"
end

get "/:number/fish" do
  "I see #{params[:number]} fish!"
end