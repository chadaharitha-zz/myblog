require "httparty"

class JobboardsController < ApplicationController
 include HTTParty 
  def index
      @results = jobsearch() 
  end
end











