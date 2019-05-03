class ChocovoteursController < ApplicationController
  before_action :set_chocovoteur, only: [:show, :edit, :update, :destroy]
  
  # GET /chocovoteurs
  # GET /chocovoteurs.json
  def index
    @chocovoteurs = Chocovoteur.all
    @chocovoteurs= Chocovoteur.page(params[:page]).per(5)
    @chocovoteur = Chocovoteur.new
    @chococount = Chocovoteur.distinct.count(:id) 
   
  end


  # GET /chocovoteurs/1
  # GET /chocovoteurs/1.json
  def show
  end

  # GET /chocovoteurs/new
  def new
    @chocovoteur = Chocovoteur.new
  end

  # GET /chocovoteurs/1/edit
  def edit
  end

  # POST /chocovoteurs
  # POST /chocovoteurs.json
  def create
    @chocovoteur = Chocovoteur.new(chocovoteur_params)
   
    respond_to do |format|
      if @chocovoteur.save
        format.html { redirect_to @chocovoteur, notice: 'Chocovoteur was successfully created.' }
        format.json { render :show, status: :created, location: @chocovoteur }
      else
        format.html { render :new }
        format.json { render json: @chocovoteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chocovoteurs/1
  # PATCH/PUT /chocovoteurs/1.json
  def update
    respond_to do |format|
      if @chocovoteur.update(chocovoteur_params)
        format.html { redirect_to @chocovoteur, notice: 'Chocovoteur was successfully updated.' }
        format.json { render :show, status: :ok, location: @chocovoteur }
      else
        format.html { render :edit }
        format.json { render json: @chocovoteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chocovoteurs/1
  # DELETE /chocovoteurs/1.json
  def destroy
    @chocovoteur.destroy
    respond_to do |format|
      format.html { redirect_to chocovoteurs_url, notice: 'Chocovoteur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chocovoteur
      @chocovoteur = Chocovoteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chocovoteur_params
      params.require(:chocovoteur).permit(:pseudo, :vote)
    end
end
