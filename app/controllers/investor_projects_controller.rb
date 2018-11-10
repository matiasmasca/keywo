class InvestorProjectsController < ApplicationController
  before_action :set_investor_project, only: [:show, :edit, :update, :destroy]

  # GET /investor_projects
  # GET /investor_projects.json
  def index
    @investor_projects = InvestorProject.all
  end

  # GET /investor_projects/1
  # GET /investor_projects/1.json
  def show
  end

  # GET /investor_projects/new
  def new
    @investor_project = InvestorProject.new
  end

  # GET /investor_projects/1/edit
  def edit
  end

  # POST /investor_projects
  # POST /investor_projects.json
  def create
    @investor_project = InvestorProject.new(investor_project_params)

    respond_to do |format|
      if @investor_project.save
        format.html { redirect_to @investor_project, notice: 'Investor project was successfully created.' }
        format.json { render :show, status: :created, location: @investor_project }
      else
        format.html { render :new }
        format.json { render json: @investor_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investor_projects/1
  # PATCH/PUT /investor_projects/1.json
  def update
    respond_to do |format|
      if @investor_project.update(investor_project_params)
        format.html { redirect_to @investor_project, notice: 'Investor project was successfully updated.' }
        format.json { render :show, status: :ok, location: @investor_project }
      else
        format.html { render :edit }
        format.json { render json: @investor_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investor_projects/1
  # DELETE /investor_projects/1.json
  def destroy
    @investor_project.destroy
    respond_to do |format|
      format.html { redirect_to investor_projects_url, notice: 'Investor project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor_project
      @investor_project = InvestorProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investor_project_params
      params.require(:investor_project).permit(:project_id, :investor_id)
    end
end
