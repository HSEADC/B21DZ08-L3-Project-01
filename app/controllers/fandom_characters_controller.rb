class FandomCharactersController < ApplicationController
  before_action :set_fandom_character, only: %i[ show edit update destroy ]

  # GET /fandom_characters or /fandom_characters.json
  def index
    @fandom_characters = FandomCharacter.all
  end

  # GET /fandom_characters/1 or /fandom_characters/1.json
  def show
  end

  # GET /fandom_characters/new
  def new
    @fandom_character = FandomCharacter.new
  end

  # GET /fandom_characters/1/edit
  def edit
  end

  # POST /fandom_characters or /fandom_characters.json
  def create
    @fandom_character = FandomCharacter.new(fandom_character_params)

    respond_to do |format|
      if @fandom_character.save
        format.html { redirect_to fandom_character_url(@fandom_character), notice: "Fandom character was successfully created." }
        format.json { render :show, status: :created, location: @fandom_character }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fandom_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fandom_characters/1 or /fandom_characters/1.json
  def update
    respond_to do |format|
      if @fandom_character.update(fandom_character_params)
        format.html { redirect_to fandom_character_url(@fandom_character), notice: "Fandom character was successfully updated." }
        format.json { render :show, status: :ok, location: @fandom_character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fandom_character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fandom_characters/1 or /fandom_characters/1.json
  def destroy
    @fandom_character.destroy

    respond_to do |format|
      format.html { redirect_to fandom_characters_url, notice: "Fandom character was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fandom_character
      @fandom_character = FandomCharacter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fandom_character_params
      params.require(:fandom_character).permit(:name, :fandom_id)
    end
end
