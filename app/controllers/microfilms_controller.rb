class MicrofilmsController < ApplicationController
  # GET /microfilms
  # GET /microfilms.json
  def index
    @microfilms = Microfilm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microfilms }
    end
  end

  # GET /microfilms/1
  # GET /microfilms/1.json
  def show
    @microfilm = Microfilm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microfilm }
    end
  end

  # GET /microfilms/new
  # GET /microfilms/new.json
  def new
    @microfilm = Microfilm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microfilm }
    end
  end

  # GET /microfilms/1/edit
  def edit
    @microfilm = Microfilm.find(params[:id])
  end

  # POST /microfilms
  # POST /microfilms.json
  def create
    @microfilm = Microfilm.new(params[:microfilm])

    respond_to do |format|
      if @microfilm.save
        format.html { redirect_to @microfilm, notice: 'Microfilm was successfully created.' }
        format.json { render json: @microfilm, status: :created, location: @microfilm }
      else
        format.html { render action: "new" }
        format.json { render json: @microfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microfilms/1
  # PUT /microfilms/1.json
  def update
    @microfilm = Microfilm.find(params[:id])

    respond_to do |format|
      if @microfilm.update_attributes(params[:microfilm])
        format.html { redirect_to @microfilm, notice: 'Microfilm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microfilms/1
  # DELETE /microfilms/1.json
  def destroy
    @microfilm = Microfilm.find(params[:id])
    @microfilm.destroy

    respond_to do |format|
      format.html { redirect_to microfilms_url }
      format.json { head :no_content }
    end
  end
end
