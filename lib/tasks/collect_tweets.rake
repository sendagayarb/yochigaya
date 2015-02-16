desc 'get tweet #yochigaya'
task :get_messages => :environment do
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["CONSUMER_KEY"]
    config.consumer_secret     = ENV["CONSUMER_SECRET"]
    config.access_token        = ENV["ACCESS_TOKEN"]
    config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
  end

  result = client.search "#yochigaya", lang:"ja"
  result.each do |tweet|
    p "#{tweet.user.screen_name}: #{tweet.text}"
    Message.create(user_name:tweet.user.screen_name, body:tweet.text)
  end
end
