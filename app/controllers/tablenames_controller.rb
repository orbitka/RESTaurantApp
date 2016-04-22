class TablenamesController < ApplicationController
  before_action :set_tablename, only: [:show, :edit, :update, :destroy]

  # GET /tablenames
  # GET /tablenames.json
  def index
    @tablenames = Tablename.all
  end

  # GET /tablenames/1
  # GET /tablenames/1.json
  def show
  end

  # GET /tablenames/new
  def new
    @tablename = Tablename.new
  end

  # GET /tablenames/1/edit
  def edit
  end

  # POST /tablenames
  # POST /tablenames.json
  def create
    @tablename = Tablename.new(tablename_params)

    respond_to do |format|
      if @tablename.save
        format.html { redirect_to @tablename, notice: 'Tablename was successfully created.' }
        format.json { render :show, status: :created, location: @tablename }
      else
        format.html { render :new }
        format.json { render json: @tablename.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablenames/1
  # PATCH/PUT /tablenames/1.json
  def update
    respond_to do |format|
      if @tablename.update(tablename_params)
        format.html { redirect_to @tablename, notice: 'Tablename was successfully updated.' }
        format.json { render :show, status: :ok, location: @tablename }
      else
        format.html { render :edit }
        format.json { render json: @tablename.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablenames/1
  # DELETE /tablenames/1.json
  def destroy
    @tablename.destroy
    respond_to do |format|
      format.html { redirect_to tablenames_url, notice: 'Tablename was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablename
      @tablename = Tablename.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tablename_params
      params.require(:tablename).permit(:name, :capacity)
    end
end
