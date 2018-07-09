require 'sinatra'

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

get '/:title' do
  @title = params[:title]
  @content = page_content(params[:title])
  erb :page
end  




get('/apples') do
  "Get your apples here"
end  