class PagesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [ :home, :team, :concept, :tasting]

  def home
  end

  def team
  end

  def concept
  end
end
