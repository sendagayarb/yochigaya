class StaticPagesController < ApplicationController
  def home
    @cowsay = Cowsay.new
  end

  def help
  end

  def cowsay
    render text:"hello world"
  end
end
