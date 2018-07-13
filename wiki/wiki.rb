require 'sinatra' #This is a cut down ruby framework
require 'uri' #Used for correctly encoding URLs

#SECURITY
#To escape any HTML that might appear in a string
#Thus avoiding a user inputting malacious JS
def h(string)
    Rack::Utils.escape_html(string)
end

#WIKI PAGE MANAGEMENT  

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

def delete_content(title)
    File.delete("pages/#{title}.txt") 
end

#HTML REQUESTS

#This is the root directory
get '/' do
    #renders html in /views/welcome
    erb :welcome, layout: :template #layout applies template erb
    #Can also just rename template.erb to layout.erb and then remove the second
    #parameter.  
end 

get '/new' do
    #Render the new erb file in the views folder
    erb :new, layout: :template
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

delete '/:title' do
    delete_content(params[:title])
    redirect '/'
end    