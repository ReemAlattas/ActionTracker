class KactionsController < ApplicationController
  before_action :set_kaction, only: [:show, :edit, :update, :destroy]

  # GET /kactions
  # GET /kactions.json
  def index
    @kactions = Kaction.all
  end

  # GET /kactions/1
  # GET /kactions/1.json
  def show
  end

  # GET /kactions/new
  def new
    @kaction = Kaction.new
  end

  # GET /kactions/1/edit
  def edit
  end

  # POST /kactions
  # POST /kactions.json
  def create
    @kaction = Kaction.new(kaction_params)

    respond_to do |format|
      if @kaction.save
        format.html { redirect_to @kaction, notice: 'Kaction was successfully created.' }
        format.json { render :show, status: :created, location: @kaction }
      else
        format.html { render :new }
        format.json { render json: @kaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kactions/1
  # PATCH/PUT /kactions/1.json
  def update
    respond_to do |format|
      if @kaction.update(kaction_params)
        format.html { redirect_to @kaction, notice: 'Kaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaction }
      else
        format.html { render :edit }
        format.json { render json: @kaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kactions/1
  # DELETE /kactions/1.json
  def destroy
    @kaction.destroy
    respond_to do |format|
      format.html { redirect_to kactions_url, notice: 'Kaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaction
      @kaction = Kaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaction_params
      params[:kaction]
    end
end
