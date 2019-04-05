class DynamicCssController < ApplicationController

  def show
    @background_color = session[:background_color] || 'white'
  end

  def update
    session[:background_color] = params[:background_color]
  end

end
