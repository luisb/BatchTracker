class MicrofilmReelsController < ApplicationController
  # GET /microfilm_reels
  # GET /microfilm_reels.json
  def index
    @microfilm_reels = MicrofilmReel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microfilm_reels }
    end
  end

  # GET /microfilm_reels/1
  # GET /microfilm_reels/1.json
  def show
    @microfilm_reel = MicrofilmReel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microfilm_reel }
    end
  end

  # GET /microfilm_reels/new
  # GET /microfilm_reels/new.json
  def new
    @microfilm_reel = MicrofilmReel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microfilm_reel }
    end
  end

  # GET /microfilm_reels/1/edit
  def edit
    @microfilm_reel = MicrofilmReel.find(params[:id])
  end

  # POST /microfilm_reels
  # POST /microfilm_reels.json
  def create
    @microfilm_reel = MicrofilmReel.new(params[:microfilm_reel])

    respond_to do |format|
      if @microfilm_reel.save
        format.html { redirect_to @microfilm_reel, notice: 'Microfilm reel was successfully created.' }
        format.json { render json: @microfilm_reel, status: :created, location: @microfilm_reel }
      else
        format.html { render action: "new" }
        format.json { render json: @microfilm_reel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microfilm_reels/1
  # PUT /microfilm_reels/1.json
  def update
    @microfilm_reel = MicrofilmReel.find(params[:id])

    respond_to do |format|
      if @microfilm_reel.update_attributes(params[:microfilm_reel])
        format.html { redirect_to @microfilm_reel, notice: 'Microfilm reel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microfilm_reel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microfilm_reels/1
  # DELETE /microfilm_reels/1.json
  def destroy
    @microfilm_reel = MicrofilmReel.find(params[:id])
    @microfilm_reel.destroy

    respond_to do |format|
      format.html { redirect_to microfilm_reels_url }
      format.json { head :no_content }
    end
  end
end
