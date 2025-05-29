class GrandparentsController < ApplicationController
  def index
    if params.dig(:filter, :skill).present?
      @grandparents = Grandparent.where(skill: params[:filter][:skill])
    else
      @grandparents = Grandparent.all
    end
  end

  def show
    @grandparent = Grandparent.find(params[:id])
  end

  def new
    @user = current_user
    @grandparent = Grandparent.new
  end

  def create
    @grandparent = Grandparent.new(grandparent_params)
    @grandparent.user = current_user
    if @grandparent.save
      redirect_to grandparent_path(@grandparent), notice: 'Grandparent was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:skill, :description, :price, :experience)
  end
end
