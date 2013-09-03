class AbbrvTitlesController < ApplicationController
  # GET /abbrv_titles
  # GET /abbrv_titles.json
  def index
    @abbrv_titles = AbbrvTitle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @abbrv_titles }
    end
  end

  # GET /abbrv_titles/1
  # GET /abbrv_titles/1.json
  def show
    @abbrv_title = AbbrvTitle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @abbrv_title }
    end
  end

  # GET /abbrv_titles/new
  # GET /abbrv_titles/new.json
  def new
    @abbrv_title = AbbrvTitle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @abbrv_title }
    end
  end

  # GET /abbrv_titles/1/edit
  def edit
    @abbrv_title = AbbrvTitle.find(params[:id])
  end

  # POST /abbrv_titles
  # POST /abbrv_titles.json
  def create
    @abbrv_title = AbbrvTitle.new(params[:abbrv_title])

    respond_to do |format|
      if @abbrv_title.save
        format.html { redirect_to @abbrv_title, notice: 'Abbrv title was successfully created.' }
        format.json { render json: @abbrv_title, status: :created, location: @abbrv_title }
      else
        format.html { render action: "new" }
        format.json { render json: @abbrv_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /abbrv_titles/1
  # PUT /abbrv_titles/1.json
  def update
    @abbrv_title = AbbrvTitle.find(params[:id])

    respond_to do |format|
      if @abbrv_title.update_attributes(params[:abbrv_title])
        format.html { redirect_to @abbrv_title, notice: 'Abbrv title was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @abbrv_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abbrv_titles/1
  # DELETE /abbrv_titles/1.json
  def destroy
    @abbrv_title = AbbrvTitle.find(params[:id])
    @abbrv_title.destroy

    respond_to do |format|
      format.html { redirect_to abbrv_titles_url }
      format.json { head :no_content }
    end
  end
end
