class ApplicationController < ActionController::Base

 def blank_square_form
   render({ :template => "calcu_templates/square_form.html.erb"})
 end

 def calculate_square
  @num = params.fetch("input").to_f
  @square_of_num = @num ** 2

    render({ :template => "calcu_templates/square_results.html.erb"})
 end

 def form_random
  render({ :template => "calcu_templates/random_form.html.erb"})
end

def calculate_random

  @lower = params.fetch("min_input").to_f
  @upper = params.fetch("max_input").to_f
  @result = rand(@lower..@upper)

  render({ :template => "calcu_templates/random_results.html.erb"})
end


end
