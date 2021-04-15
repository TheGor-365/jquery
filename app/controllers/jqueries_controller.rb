class JqueriesController < ApplicationController

  before_action :set_jquery, only: %i[ show edit update destroy ]

  def index
    @jqueries = Jquery.all
  end

  def show; end
  def edit; end

  def new
    @jquery = Jquery.new
  end

  def create
    @jquery = Jquery.new(jquery_params)

    respond_to do |format|
      if @jquery.save
        format.html { redirect_to @jquery }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @jquery.update(jquery_params)
        format.html { redirect_to @jquery }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @jquery.destroy
    respond_to do |format|
      format.html { redirect_to jqueries_url }
    end
  end

  private
    def set_jquery
      @jquery = Jquery.find(params[:id])
    end

    def jquery_params
      params.fetch(:jquery, {})
    end
end
