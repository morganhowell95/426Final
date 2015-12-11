class UsercodesController < ApplicationController
  before_action :set_usercode, only: [:show, :edit, :update, :destroy]

  # GET /usercodes
  # GET /usercodes.json
  def index
    @usercodes = Usercode.where(user_id: session[:user_id])
  end

  # GET /usercodes/1
  # GET /usercodes/1.json
  def show
  end

  # GET /usercodes/new
  def new
    @usercode = Usercode.new
  end

  # GET /usercodes/1/edit
  def edit
  end

  # POST /usercodes
  # POST /usercodes.json
  def create
    @usercode = Usercode.new(code: params[:code], user_id: session[:user_id])
    puts @usercode
    respond_to do |format|
      if @usercode.save
        format.html { redirect_to @usercode, notice: 'Usercode was successfully created.' }
        format.json { render :show, status: :created, location: @usercode }
      else
        format.html { render :new }
        format.json { render json: @usercode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usercodes/1
  # PATCH/PUT /usercodes/1.json
  def update
    respond_to do |format|
      if @usercode.update(usercode_params)
        format.html { redirect_to @usercode, notice: 'Usercode was successfully updated.' }
        format.json { render :show, status: :ok, location: @usercode }
      else
        format.html { render :edit }
        format.json { render json: @usercode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercodes/1
  # DELETE /usercodes/1.json
  def destroy
    @usercode.destroy
    respond_to do |format|
      format.html { redirect_to usercodes_url, notice: 'Usercode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usercode
      @usercode = Usercode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usercode_params
      params.require(:usercode).permit(:code, :user_id)
    end
end
