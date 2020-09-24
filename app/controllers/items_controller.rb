class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @item.update(item_params) if current_user.id == @item.user_id
    return redirect_to root_path if @item.valid?

    render :edit
  end
end

private

def move_to_index
  redirect_to action: :index unless user_signed_in?
end

def item_params
  params.require(:item).permit(:image, :name, :explanation, :category_id, :status_id, :fee_id, :area_id, :day_id, :price).merge(user_id: current_user.id)
end

def set_item
  @item = Item.find(params[:id])
end
