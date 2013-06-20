
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def jobsearch(options={})
    self.class.get("http://api.careerbuilder.com/v1/jobsearch?", :query => options.merge({:DeveloperKey => "WDHQ4VK5ZGXFY0PDH094"}))
  end

end