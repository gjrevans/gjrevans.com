class ProjectsController < ApplicationController
    before_action :authenticate_user!, except: [:show]
    before_action :set_project, only: [:show, :edit, :update, :destroy]

    def index
        @projects = Project.order('id ASC')
    end

    def show
        if @project.unpublished?
            flash[:danger] = "Oh no, that project is unpublushed!"
            redirect_to root_path
        end
        @projects = Project.where(status: :published).order("RANDOM()").limit(3)

        @word_count = @project.description.scan(/\w+/).size
    end


    def new
        @project = Project.new
    end

    def edit
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            flash[:success] = 'Project was successfully created!'
            redirect_to @project
        else
            render :new
        end
    end

    def update
        if @project.update(project_params)
            flash[:success] = 'Project was successfully updated!'
            redirect_to @project
        else
            render :edit
        end
    end

    def destroy
        @project.destroy
        flash[:success] = 'Project was successfully deleted!'
        redirect_to projects_url
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
        @project = Project.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
        params.require(:project).permit(:title, :image, :banner, :date, :description, :summary, :link, :status)
    end
end
