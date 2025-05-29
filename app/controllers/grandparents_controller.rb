class GrandparentsController < ApplicationController
  def index
    @grandparents_location = Grandparent.all
    @user_location = User.where.associated(:grandparents)
    @markers = User.all.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        grandparent: user.grandparents
      }
      # grandparent.user.latitude,
      # grandparent.user.longitude
      # could be wrong, might just be grandparent.latitude, grandparent.longitude
    end


    if params.dig(:filter, :skill).present?# || params.dig(:filter, :price).present?
      @grandparents = Grandparent.where(skill: params[:filter][:skill])#, "price < #{params[:filter][:price]}")
    else
      @grandparents = Grandparent.all
    end
  end
  def show
    @grandparent = Grandparent.find(params[:id])
  end
end
