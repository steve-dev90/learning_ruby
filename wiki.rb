require 'sinatra'
require 'uri'

#This is the root directory
get '/' do
    #renders html in /views/welcome
    erb :welcome 
end   

def page_content(title)
    File.read("pages/#{title}.txt")
#Exception handling in ruby - see http://phrogz.net/programmingruby/tut_exceptions.html   
rescue Errno::ENOENT 
    return nil
end

def save_content(title, content)
    #Open file pages/title in write mode and print content to it
    File.open("pages/#{title}.txt", "w") do |file|
      file.print(content)
    end
  end

get '/new' do
    #Render the new erb file in the views folder
    erb :new
end    

get '/:title' do
    @title = params[:title]
    @content = page_content(params[:title])
    erb :page
end 

get '/:title/edit' do
    @title = params[:title]
    @content = page_content(params[:title])
    erb :edit
end    

post '/create' do
    save_content(params["title"], params["content"])
    #redirect to new wiki page, URI.escape endcodes URL so that
    #empty spaces in "title" text are converted to %. HTTP doesn't
    #accept empty spaces.
    redirect URI.escape("/#{params["title"]}")
end 

put '/:title' do
    save_content(params[:title], params["content"])
    #redirect to new wiki page, URI.escape endcodes URL so that
    #empty spaces in "title" text are converted to %. HTTP doesn't
    #accept empty spaces.
    redirect URI.escape("/#{params["title"]}")
end