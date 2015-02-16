class Cowsay
  include ActiveModel::Model

  attr_accessor :word

  def exec
    `cowsay #{word}`
  end
end
