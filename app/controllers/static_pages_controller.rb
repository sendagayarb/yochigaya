class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def calculate
    @input = params[:expression] 
    
    if @input =~ /^[0-9-+\/\*()\.]+$/
      begin
        @result = eval(@input)
      rescue SyntaxError
        @result = "invalid expression!"
      end
    else
      @result = "invalid expression!"
    end

    render :home
  end
end
