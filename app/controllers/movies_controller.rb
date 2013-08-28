require 'open-uri'
require 'json'

class MoviesController < ApplicationController
  def index
  	@search = ""
  end
  def show
  	keyword = params[:keyword]
  	body = open("http://mymovieapi.com/?title=#{keyword}&"+
  		"type=json&plot=simple&episode=1&limit=10&yg=0&mt=none&"+
  		"lang=en-US&offset=&aka=simple&release=simple&business=0&tech=0")
  	#rescue
  	#	flash[:notice]="Error"
  	@movies = JSON.parse(body.read, :symbolize_names =>true)
  	
  end
end
