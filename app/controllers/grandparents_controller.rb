class GrandparentsController < ApplicationController
  def index
    @grandparents = Grandparent.all

  end
  def show
    @grandparent = Grandparent.find(params[:id])
  end
end
