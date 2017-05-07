class SitesController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :set_site, only: [:show, :edit, :update, :destroy]

    # GET /sites
    # GET /sites.json
    def index
        @sites = Site.all
    end

    # GET /sites/1
    # GET /sites/1.json
    def show
    end

    # GET /sites/new
    def new
        @site = Site.new
    end

    # GET /sites/1/edit
    def edit
    end

    # POST /sites
    def create
        @site = Site.new(site_params)
        if @site.save
            redirect_to @site, notice: 'Site was successfully created.'
        else
            render :new
        end
    end

    # PATCH/PUT /sites/1
    def update
        if @site.update(site_params)
            redirect_to @site, notice: 'Site was successfully updated.'
        else
            render :edit
        end
    end

    # DELETE /sites/1
    def destroy
        @site.destroy
        redirect_to sites_url, notice: 'Site was successfully destroyed.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
        @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
        params.require(:site).permit(:title, :image, :github, :link, :description)
    end
end
