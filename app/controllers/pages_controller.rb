class PagesController < ApplicationController
    def index
        @contact = Contact.new
        @projects = Project.where(status: :published).order('id ASC')
    end
end
