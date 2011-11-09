class StoreController < ApplicationController
  def index
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
    
    @count = session[:counter]
    @products = Product.all
  end
  
 

end
