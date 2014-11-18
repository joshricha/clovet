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

    @next_item = Item.where(id: rand_number).first

  end

  def create_history

    @user = current_user

    new_history = History.new
    new_history.user_id = @user.id
    new_history.item_id = params['item_id']
    new_history.liked = if params['liked'] == 'true'
                          true
                        else
                          false
                        end
    new_history.in_wishlist = if params['liked'] == 'true'
                          true
                        else
                          false
                        end
    new_history.clicked_through = params['clicked_through']
    new_history.save

    redirect_to item_path(params['next_item'])


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