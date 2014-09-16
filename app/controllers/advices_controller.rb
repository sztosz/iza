class AdvicesController < ApplicationController
  def new
    @advice = Advice.new
  end

  def create
    @advice = Advice.new(params[:advice])
    @advice.request = request
    if @advice.deliver
      flash[:notice] = 'Dziękujmy za skontaktowanie się, odpowiemy wkrótce!'
      redirect_to advices_path
    else
      flash[:error] = 'Nie można wysłać wiadomości.'
      render 'new'
    end
  end
end