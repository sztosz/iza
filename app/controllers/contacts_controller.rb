class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
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