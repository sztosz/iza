class AdvicesController < ApplicationController
  def new
    @contact = Advice.new
  end

  def create
    @contact = Advice.new(params[:advice])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = 'Dziękujmy za skontaktowanie się, odpowiemy wkrótce!'
      redirect_to contacts_path
    else
      flash[:error] = 'Nie można wysłać wiadomości.'
      render 'new'
    end
  end
end