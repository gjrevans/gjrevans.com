class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def create
        ContactMailer.contact_confirmation(Contact.new(params[:contact])).deliver
        flash[:success] = "Thanks, your message was sent!"
        redirect_to root_path
    end
end
