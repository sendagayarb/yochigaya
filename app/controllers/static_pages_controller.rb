class StaticPagesController < ApplicationController
  def home
    @cowsay = Cowsay.new
  end

  def help
  end

  def cowsay
    words = %w(seito sueyoshi)
    @cowsay = Cowsay.new(word: words.sample)
  end
end
