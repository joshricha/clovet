class ItemsController < ApplicationController

  def index
    @items = Item.all

    offset = rand(Item.count)
    @rand_record = Item.offset(offset).first.id
  end

  def show
    @user = current_user

    @item = Item.find(params[:id])

    first = Item.first.id
    last = Item.last.id
    rand_number = (first..last).to_a.sample

    @like = Item.where(id: rand_number).first
    @dislike = Item.where(id: rand_number).first
  end

  def add_to_history
    @user = current_user
    new_history = History.new 
    new_history.user_id = @user.id 
    new_history.item_id = params['itemId']
    new_history.liked = true 
    new_history.in_wishlist = true 
    new_history.save
    
    render :json => new_history
  end

end