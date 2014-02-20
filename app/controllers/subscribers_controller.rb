class SubscribersController < ApplicationController

  def index
    @subscribers = Subscriber.all
  end

  def show
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.create(subscriber_params)

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
    @subscriber = Subscriber.find(params[:id])
    if @subscriber.destroy
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
    def set_subscriber
      @subscriber = Subscriber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscriber_params
      params.permit(:id, :name, :email, :company, :website, :message)
    end


end
