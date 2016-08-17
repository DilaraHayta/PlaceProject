class VotesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_place

  def create
    #@vote = @idea.votes.new(rating: params[:vote][:rating])
  end

  def destroy
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end
end
