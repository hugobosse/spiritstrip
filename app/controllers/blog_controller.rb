class BlogController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :post, :blog]

  def post
    render "/#{self.controller_name}/#{params[:title]}/index.html"
  end

  def blog
  end
end
