class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def hello
  	clnt = HTTPClient.new
  	target = "https://raw.githubusercontent.com/yochiyochirb/meetups/master/README.md"
  	@result = clnt.get(target)
  end
end
