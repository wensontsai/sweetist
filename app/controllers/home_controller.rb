class HomeController < ApplicationController
  def index
  end

  def zipcode_check
    compare_this = params[:zipcode]
    @zipcodes = (10001..10292).to_a

    if @zipcodes.include?(compare_this.to_i) == true
      @answer = "yes"
    end

      @answer_json = @answer.to_json
      render :json => @answer_json
  end



  def add_to_cart
    @cart = get_cart
    @cart.add_to_cart(Product.find(params[:id]))
  end

  def get_cart
    if session[:cart]
      return session[:cart]
    else
      session[:cart] = Cart.new
      return session[:cart]
    end
  end



  def clear_cart
    @cart = get_cart
    @cart.clear
  end

  def clear
    @items.clear
  end


end
