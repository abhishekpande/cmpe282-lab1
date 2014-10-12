class CustomcatalogsController < ApplicationController
  before_action :set_customcatalog, only: [:show, :edit, :update, :destroy]

  def index
    @customcatalogs = Customcatalog.all
    respond_with(@customcatalogs)
  end

  def show
    respond_with(@customcatalog)
  end

  def new
    @customcatalog = Customcatalog.new
    respond_with(@customcatalog)
  end

  def edit
  end

  def create
    @customcatalog = Customcatalog.new(customcatalog_params)
    @customcatalog.save
    respond_with(@customcatalog)
  end

  def update
    @customcatalog.update(customcatalog_params)
    respond_with(@customcatalog)
  end

  def destroy
    @customcatalog.destroy
    respond_with(@customcatalog)
  end

  private
    def set_customcatalog
      @customcatalog = Customcatalog.find(params[:id])
    end

    def customcatalog_params
      params.require(:customcatalog).permit(:name, :features, :quantity)
    end
end
