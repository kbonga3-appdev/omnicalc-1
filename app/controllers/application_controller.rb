class ApplicationController < ActionController::Base
 def blank_square_form
   render({ :template => "calcu_templates/square_form.html.erb"})
 end
end
