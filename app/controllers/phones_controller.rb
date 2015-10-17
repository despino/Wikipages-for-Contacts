class PhonesController < ApplicationController

  def new
    contact = Contact.find(params[:contact_id])
    @phone = Phone.new
    @phone.contact = contact
    render('phones/new.html.erb')
  end

  def create
    @contact = Contact.find(params[:contact_id])
    @phone = Phone.new(:number => params[:number])
    @phone.contact = @contact
     if @phone.save
       render('phones/success.html.erb')
     else
       render('phones/new.html.erb')
     end
   end

   def destroy
     @phone = Phone.find(params[:id])
     @contact = @phone.contact
     @phone.destroy
     render('phones/destroy.html.erb')
   end
   
end
