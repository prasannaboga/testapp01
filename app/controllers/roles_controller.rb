class RolesController < ApplicationController
  def index
    @roles = Role.all

  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(params[:role].permit(:name))
    if @role.save
      flash['success'] = 'New role created'
      redirect_to roles_path
    else
      render :new
    end
  end
end
