class GrandparentsController < ApplicationController
  def index
    if params.dig(:filter, :skill).present?# || params.dig(:filter, :price).present?
      @grandparents = Grandparent.where(skill: params[:filter][:skill])#, "price < #{params[:filter][:price]}")
    else
      @grandparents = Grandparent.all
    end
  end

  def show
    @grandparent = Grandparent.find(params[:id])
  end

  def new
    @grandparent = Grandparent.new
  end
end
