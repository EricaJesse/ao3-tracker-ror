class FicsController < ApplicationController
  before_action :set_fic, only: %i[ show edit update destroy ]

  # GET /fics or /fics.json
  def index
    @fics = Fic.all
  end

  # GET /fics/1 or /fics/1.json
  def show
  end

  # GET /fics/new
  def new
    @fic = Fic.new
  end

  # GET /fics/1/edit
  def edit
  end

  # POST /fics or /fics.json
  def create
    @fic = Fic.new(fic_params)

    respond_to do |format|
      if @fic.save
        format.html { redirect_to fic_url(@fic), notice: "Fic was successfully created." }
        format.json { render :show, status: :created, location: @fic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fics/1 or /fics/1.json
  def update
    respond_to do |format|
      if @fic.update(fic_params)
        format.html { redirect_to fic_url(@fic), notice: "Fic was successfully updated." }
        format.json { render :show, status: :ok, location: @fic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fics/1 or /fics/1.json
  def destroy
    @fic.destroy

    respond_to do |format|
      format.html { redirect_to fics_url, notice: "Fic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fic
      @fic = Fic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fic_params
      params.require(:fic).permit(:title, :author, :summary, :word_count, :chapter_count, :fandom, :ship, :maturity_rating, :date_completed, :reader_rating, :reader_notes)
    end    
end
