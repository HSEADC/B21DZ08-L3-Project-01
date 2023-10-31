class FandomsController < ApplicationController
  before_action :set_fandom, only: %i[ show edit update destroy ]

  # GET /fandoms or /fandoms.json
  def index
    @fandoms = Fandom.all
  end

  # GET /fandoms/1 or /fandoms/1.json
  def show
  end

  # GET /fandoms/new
  def new
    @fandom = Fandom.new
  end

  # GET /fandoms/1/edit
  def edit
  end

  # POST /fandoms or /fandoms.json
  def create
    @fandom = Fandom.new(fandom_params)

    respond_to do |format|
      if @fandom.save
        format.html { redirect_to fandom_url(@fandom), notice: "Fandom was successfully created." }
        format.json { render :show, status: :created, location: @fandom }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fandom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fandoms/1 or /fandoms/1.json
  def update
    respond_to do |format|
      if @fandom.update(fandom_params)
        format.html { redirect_to fandom_url(@fandom), notice: "Fandom was successfully updated." }
        format.json { render :show, status: :ok, location: @fandom }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fandom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fandoms/1 or /fandoms/1.json
  def destroy
    @fandom.destroy

    respond_to do |format|
      format.html { redirect_to fandoms_url, notice: "Fandom was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fandom
      @fandom = Fandom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fandom_params
      params.require(:fandom).permit(:title, :author_id, :category_id, :character_id, :description)
    end
end
