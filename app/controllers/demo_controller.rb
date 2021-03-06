class DemoController < ApplicationController
  
  layout false

  def data
    url = 'http://54.162.112.10/jsonapi/node/article'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    @data = response
    # puts "hello"
    render ('hello')
  end

  def index
    require 'net/http'
    require 'json'
    puts "index start"

    url = 'https://jsonplaceholder.typicode.com/posts/'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    json1 = JSON.parse(response)

    puts json1
    puts('-----------------------')
    puts "Index"
    render('index')
  end

  #/demo/hello
  def hello
    # puts ("Testing...")
    @array = [1, 2, 3, 4, 5]
    @id = params['id']
    @page = params[:page]
    render ('hello')
  end

  def other_hello
    # puts ('re-direct')
    # redirect_to(:controller => 'demo', :action => 'index')
    redirect_to(:action => 'index')
  end

  def lynda
    # puts ('lynda!')
    redirect_to('https://www.lynda.com')
  end 
end
