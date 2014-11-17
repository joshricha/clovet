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
    new_history.liked = params['likeOrNot']
    new_history.in_wishlist = params['likeOrNot']
    new_history.clicked_through = params['clickedThrough']
    new_history.save

    render :json => new_history
  end

  def category
    @user = current_user

    @category = params[:category]

    case @category
      when 'womens'
        @category == 'womens'
        @items = Item.all.where(:gender => "female")
        @items += Item.all.where(:gender => "unisex")
        @item = @items.sample
      when 'mens'
        @items = Item.all.where(:gender => "male")
        @items += Item.all.where(:gender => "unisex")
        @item = @items.sample
    end

    render '/items/category/show.html.erb'
  end

end