class StaticPagesController < ApplicationController
  def home
  end

  def show
    @items = 'Hello world'
  end

  def help
  end
end
