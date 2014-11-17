class ItemsController < ApplicationController

  def index
    @items = Item.all

    offset = rand(Item.count)
    @rand_record = Item.offset(offset).first.id
  end

  def show
    @item = Item.find(params[:id])

    first = Item.first.id
    last = Item.last.id
    rand_number = (first..last).to_a.sample

    @like = Item.where(id: rand_number).first
    @dislike = Item.where(id: rand_number).first
  end

end