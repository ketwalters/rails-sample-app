class WinksController < ApplicationController
  # GET /winks
  def index
    @winks = Wink.all
  end

  # GET /winks/new
  def new
    @wink = Wink.new
  end

  # POST /winks
  def create
    @wink = Wink.new(params[:wink])

    respond_to do |format|
      if @wink.save
        # redirect_to @wink
        format.html { redirect_to @wink, notice: 'Wink was successfully created. You dog, you.' }
        format.json { render json: @wink, status: :created, location: @wink }
      else
        format.html { render action: 'new' }
        format.json { render json: @wink.errors, status: :unproccessable_entity }
      end
    end
  end

  # GET /winks/1
  def show
    @wink = Wink.find(params[:id])
  end

  # DELETE /winks/1
  def destroy
    @wink = Wink.find(params[:id])
    @wink.destroy
    redirect_to "/winks"
  end
end