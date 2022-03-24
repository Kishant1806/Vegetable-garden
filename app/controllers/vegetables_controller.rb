class VegetablesController < ApplicationController

  def search
    @vegetables = Vegetable.where("name LIKE ?","%" + params[:q] + "%")

  end

  def new
  @vegetables = Vegetable.new
  end
  def create
    @vegetables = Vegetable.new (vegetable_params)
      if @vegetables.save
      redirect_to root_path
    end
  end

  def show
    @vegetables = Vegetable.find(params[:id])
  end

  def edit
    @vegetables = Vegetable.find_by(id: params[:id])
  end

  def destroy
    @vegetables = Vegetable.find(params[:id])
    if @vegetables.destroy
    redirect_to root_path, status: :see_other
    end
  end

  def update
    @vegetables = Vegetable.find(params[:id])

    if @vegetables.update(vegetable_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

private
  def vegetable_params
    params.require(:vegetable).permit(:name, :price, :qty, :description, :avatar_img)
  end
end
