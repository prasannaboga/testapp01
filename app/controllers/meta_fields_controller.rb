class MetaFieldsController < ApplicationController

  def new
    @user = User.find params[:user_id]
    @meta_field = @user.meta_fields.build
    @temp_id = Time.now.to_i
    render layout: false
  end
end
