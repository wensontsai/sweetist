class AccountsController < ApplicationController

  def index
    @user = current_user.email
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    render json: {}
    # respond_to do |format|
    #   if @user.save
    #     format.html { redirect_to @user, notice: 'A favorite place was successfully created.' }
    #     format.json { render action: 'show', status: :created, location: @user }
    #   else
    #     format.html { render action: 'new' }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  end


  def destroy
    @user = User.find(params[:id])
      if @user.destroy
        render json: {success:true}
      else
        render json: {success:false}
      end

    # respond_to do |format|
    #   format.html { redirect_to account_url }
    #   format.json { head :no_content }
    # end

  end


  def edit
    @user = User.find(params[:id])
  end



  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to @user, :notice => "Account has been successfully updated!"
    else
      render :action => "edit"
    end
  end



  def approve_account
    id = params[:id]
    @user = User.find(id)
    @user.update_attributes(:approved => true)

    render json: {}
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:id, :email, :admin, :approved)
    end


end
