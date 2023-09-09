class Admin::ItemsController < ApplicationController
  before_action :ensure_item, only: [:show, :edit, :update]
  
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    byebug
    @item.save ? (redirect_to admin_item_path(@item)) : (render :new)
  end

  def show
  end

  def edit
  end

 
  private

  def item_params
    params.require(:item).permit(:genre_id, :name, :introduction, :image, :price, :is_active)
  end

  def ensure_item
    @item = Item.find(params[:id])
  end
end
