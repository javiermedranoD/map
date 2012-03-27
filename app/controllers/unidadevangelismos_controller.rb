class UnidadevangelismosController < ApplicationController
  # GET /unidadevangelismos
  # GET /unidadevangelismos.json
  def index
    @unidadevangelismos = Unidadevangelismo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unidadevangelismos }
    end
  end

  # GET /unidadevangelismos/1
  # GET /unidadevangelismos/1.json
  def show
    @unidadevangelismo = Unidadevangelismo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @unidadevangelismo }
    end
  end

  # GET /unidadevangelismos/new
  # GET /unidadevangelismos/new.json
  def new
    @unidadevangelismo = Unidadevangelismo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @unidadevangelismo }
    end
  end

  # GET /unidadevangelismos/1/edit
  def edit
    @unidadevangelismo = Unidadevangelismo.find(params[:id])
  end

  # POST /unidadevangelismos
  # POST /unidadevangelismos.json
  def create
    @unidadevangelismo = Unidadevangelismo.new(params[:unidadevangelismo])

    respond_to do |format|
      if @unidadevangelismo.save
        format.html { redirect_to @unidadevangelismo, notice: 'Unidadevangelismo was successfully created.' }
        format.json { render json: @unidadevangelismo, status: :created, location: @unidadevangelismo }
      else
        format.html { render action: "new" }
        format.json { render json: @unidadevangelismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /unidadevangelismos/1
  # PUT /unidadevangelismos/1.json
  def update
    @unidadevangelismo = Unidadevangelismo.find(params[:id])

    respond_to do |format|
      if @unidadevangelismo.update_attributes(params[:unidadevangelismo])
        format.html { redirect_to @unidadevangelismo, notice: 'Unidadevangelismo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @unidadevangelismo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidadevangelismos/1
  # DELETE /unidadevangelismos/1.json
  def destroy
    @unidadevangelismo = Unidadevangelismo.find(params[:id])
    @unidadevangelismo.destroy

    respond_to do |format|
      format.html { redirect_to unidadevangelismos_url }
      format.json { head :ok }
    end
  end
end
