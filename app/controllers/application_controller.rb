
class ApplicationController < ActionController::Base
  def homepage
    render({ :template => "weather_template.html.erb"})
  end
end
