class LandingController < ApplicationController

  def index
    @products = Product.all
    @most_reviewed = Product.most_reviews
    @most_recently_added = Product.most_recent
    render :index
  end

  
end
