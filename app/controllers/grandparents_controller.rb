class GrandparentsController < ApplicationController
  def index
    @grandparents = Grandparent.all
  end
  def show

  end
end
