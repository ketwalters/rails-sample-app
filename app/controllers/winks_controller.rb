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
    @wink = Wink.new(params[:post])
  end

  # DELETE /winks/1
  def destroy
    @wink = Wink.find(params[:id])
    @wink.destroy
  end
end