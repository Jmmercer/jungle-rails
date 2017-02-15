class Admin::CatagoriesController < ApplicationController
  def index
    @catagory = Catagory.order(id: :desc).all
  end

  def new
    @catagory = Catagory.new
  end

  def create
    @catagory = Catagory.new(catagory_params)

    if @catagory.save
      redirect_to [:admin, :catagories], notice: 'Catagory created!'
    else
      render :new
    end
  end

  def destroy
    @Catagory = Catagory.find params[:id]
    @Catagory.destroy
    redirect_to [:admin, :catagories], notice: 'Catagory deleted!'
  end
end
