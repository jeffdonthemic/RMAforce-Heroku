class RmaController < ApplicationController
  def index
  end
  
  # search and display results
  def display
    @json = Rma.search(params[:rmaName])
    # render :text => @json.inspect
  end
    
  def show
    @rma = Rma.retrieve(params[:id])
    #render :text => @rma.inspect
  end
  
end
