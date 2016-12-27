class ContactsController < ApplicationController
    skip_before_filter :verify_authenticity_token, :only => [:new, :create]
    
    def new
        @projects = Project.all
        @contact = Contact.new
    end

    def create
        ContactMailer.contact_confirmation(Contact.new(params[:contact])).deliver
        flash[:info] = "Thanks, your message was sent!"
        redirect_to root_path
    end
end
