class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])

    @dislike = Item.where("id > ?", params[:id]).first
    @like = Item.where("id > ?", params[:id]).first
  end

end