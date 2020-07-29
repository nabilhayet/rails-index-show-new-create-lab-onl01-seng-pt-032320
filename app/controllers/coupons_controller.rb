class CouponsController < ApplicationController
    def index
      @coupons = Coupon.all 
    end
  
    def new 
      render :new
    end 
  
    def create
      Post.create(title: params[:post][:title], description: params[:post][:description])
      redirect_to posts_path
    end
    
  end