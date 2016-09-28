class QuejasController < ApplicationController
  before_action :validate_user, except: [:show, :index]
  before_action :set_queja, only: [:show, :edit, :update, :destroy]

  # GET /quejas
  # GET /quejas.json
  def index
    @quejas = Queja.all
  end

  # GET /quejas/1
  # GET /quejas/1.json
  def show
  end

  # GET /quejas/new
  def new
    @queja = Queja.new
  end

  # GET /quejas/1/edit
  def edit
  end

  # POST /quejas
  # POST /quejas.json
  def create
    @queja = current_user.quejas.new(queja_params)

    respond_to do |format|
      if @queja.save
        format.html { redirect_to @queja, notice: 'Queja was successfully created.' }
        format.json { render :show, status: :created, location: @queja }
      else
        format.html { render :new }
        format.json { render json: @queja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quejas/1
  # PATCH/PUT /quejas/1.json
  def update
    respond_to do |format|
      if @queja.update(queja_params)
        format.html { redirect_to @queja, notice: 'Queja was successfully updated.' }
        format.json { render :show, status: :ok, location: @queja }
      else
        format.html { render :edit }
        format.json { render json: @queja.errors, status: :unprocessable_entity }
      end
    end
  end




  # DELETE /quejas/1
  # DELETE /quejas/1.json
  def destroy
    @queja.destroy
    respond_to do |format|
      format.html { redirect_to quejas_url, notice: 'Queja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queja
      @queja = Queja.find(params[:id])
    end

    def validate_user
      format.html { redirect_to new_user_session_path, notice "Necesitas iniciar sesión" }
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def queja_params
      params.require(:queja).permit(:user_id, :text)
    end
end
