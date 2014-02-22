class CartsController < ApplicationController

  def index
    @cart = Cart.find(params[:user_id])
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.create(cart_params)

    render json: {}
    # respond_to do |format|
    #   if @subscriber.save
    #     format.html { redirect_to @subscriber, notice: 'A favorite place was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @subscriber }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @subscriber.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  def destroy
    @cart = Cart.find(params[:id])
    if @cart.destroy
      render json: {success:true}
    else
      render json: {success:false}
    end

    # respond_to do |format|
    #   format.html { redirect_to subscriber_url }
    #   format.json { head :no_content }
    # end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.permit(:id, :user_id)
    end

end

