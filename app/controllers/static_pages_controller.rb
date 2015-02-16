require_relative "../services/analyze-follower"

class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def analyze
    @id = params[:twitter_id]
    af = AnalyzeFollower.new
    @texts = af.get_fw_kw(@id)
  end
end
