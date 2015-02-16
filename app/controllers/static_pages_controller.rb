class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def analyze
    @id     = params[:twitter_id]
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
    end
    @texts  = @client.user(@id).description
  end
end
