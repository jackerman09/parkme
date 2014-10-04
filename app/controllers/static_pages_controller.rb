class StaticPagesController < ApplicationController
	before_filter :authenticate_user!, except: [:home]

  def home
  end

  def ember
  end
end
