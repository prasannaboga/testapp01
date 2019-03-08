class RolesController < ApplicationController
  def index
    @roles = Role.all

  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(params[:role].permit(:name))
    @role.active!
    if @role.save
      flash['success'] = 'New role created'
      redirect_to roles_path
    else
      render :new
    end
  end

  def update_status
    @role = Role.find(params[:id])
    if params[:status].present?
      @role.active!
    else
      @role.inactive!
    end
  end
end
