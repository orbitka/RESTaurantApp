class TablenamesController < ApplicationController
  before_action :set_tablename, only: [:show, :edit, :update, :destroy]
  before_action :authenticate


  def index
    @tablenames = Tablename.all
  end

  def show
  end

  def new
    @tablename = Tablename.new
  end

  def edit
  end

  def create
    @tablename = Tablename.new(tablename_params)

    respond_to do |format|
      if @tablename.save
        format.html { redirect_to @tablename, notice: 'Tablename was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @tablename.update(tablename_params)
        format.html { redirect_to @tablename, notice: 'Tablename was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @tablename.destroy
    respond_to do |format|
      format.html { redirect_to tablenames_url, notice: 'Tablename was successfully destroyed.' }
    end
  end

  private

    def set_tablename
      @tablename = Tablename.find(params[:id])
    end

    def tablename_params
      params.require(:tablename).permit(:name, :capacity)
    end
end
