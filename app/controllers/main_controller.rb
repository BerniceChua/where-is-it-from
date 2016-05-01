class MainController < ApplicationController
  def index
    @brands = Brand.all
  end
end