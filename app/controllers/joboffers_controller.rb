class JoboffersController < ApplicationController
  # GET /joboffers
  # GET /joboffers.json
  def index
    @joboffers = Joboffer.paginate(:page => params[:page], :per_page => 10).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @joboffers }
    end
  end

  # GET /joboffers/1
  # GET /joboffers/1.json
  def show
    @joboffer = Joboffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @joboffer }
    end
  end

  # GET /joboffers/new
  # GET /joboffers/new.json
  def new
    @joboffer = Joboffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @joboffer }
    end
  end

  # GET /joboffers/1/edit
  def edit
    @joboffer = Joboffer.find(params[:id])
  end

  # POST /joboffers
  # POST /joboffers.json
  def create
    @joboffer = Joboffer.new(params[:joboffer])

    respond_to do |format|
      if @joboffer.save
        format.html { redirect_to @joboffer, notice: 'Joboffer was successfully created.' }
        format.json { render json: @joboffer, status: :created, location: @joboffer }
      else
        format.html { render action: "new" }
        format.json { render json: @joboffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /joboffers/1
  # PUT /joboffers/1.json
  def update
    @joboffer = Joboffer.find(params[:id])

    respond_to do |format|
      if @joboffer.update_attributes(params[:joboffer])
        format.html { redirect_to @joboffer, notice: 'Joboffer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @joboffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joboffers/1
  # DELETE /joboffers/1.json
  def destroy
    @joboffer = Joboffer.find(params[:id])
    @joboffer.destroy

    respond_to do |format|
      format.html { redirect_to joboffers_url }
      format.json { head :no_content }
    end
  end
end
