class ApplicationController < ActionController::Base

 def blank_square_form
   render({ :template => "calcu_templates/square_form.html.erb"})
 end

 def calculate_square
  @num = params.fetch("input").to_f
  @square_of_num = @num ** 2

    render({ :template => "calcu_templates/square_results.html.erb"})
 end

end
