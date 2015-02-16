require 'ruby_cowsay'

class Cowsay
  include ActiveModel::Model

  attr_accessor :word

  def exec
    Cow.new.say(word)
  end
end
