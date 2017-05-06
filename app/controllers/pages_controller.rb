class PagesController < ApplicationController
    def index
        @contact = Contact.new
        @projects = Project.where(status: :published).order('id ASC')
        @sites = Site.all
        @technologies = JSON.parse(File.read('public/json/technologies.json'))
    end
end
