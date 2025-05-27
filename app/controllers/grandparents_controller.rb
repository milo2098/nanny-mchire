class GrandparentsController < ApplicationController
  def show
    @grandparent = Grandparent.find(params[:id])
  end
end
