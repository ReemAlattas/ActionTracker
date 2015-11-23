class ActionsController < ApplicationController
  before_action :set_action, only: [:show, :edit, :update, :destroy]

  # GET /actions
  # GET /actions.json
  def index
    @kactions = Action.all
  end

  # GET /actions/1
  # GET /actions/1.json
  def show
  end

  # GET /actions/new
  def new
    @kaction = Action.new
  end

  # GET /actions/1/edit
  def edit
  end

  # POST /actions
  # POST /actions.json
  def create
    @kaction = Action.new(kaction_params)

    respond_to do |format|
      if @action.save
        format.html { redirect_to @action, notice: 'Action was successfully created.' }
        format.json { render :show, status: :created, location: @action }
      else
        format.html { render :new }
        format.json { render json: @action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actions/1
  # PATCH/PUT /actions/1.json
  def update
    respond_to do |format|
      if @action.update(kaction_params)
        format.html { redirect_to @action, notice: 'Action was successfully updated.' }
        format.json { render :show, status: :ok, location: @action }
      else
        format.html { render :edit }
        format.json { render json: @action.errors, status: :unprocessable_entity }
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
