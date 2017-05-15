class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :team, :concept, :blog ]

  def home
  end

  def team
  end

  def concept
  end

  def blog
  end
end
