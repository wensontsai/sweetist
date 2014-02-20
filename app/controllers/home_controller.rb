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


end
