class PagesController < ApplicationController
    def index
        @contact = Contact.new
        @projects = Project.order('id ASC')
    end
end
