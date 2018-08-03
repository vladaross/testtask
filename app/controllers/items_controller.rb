class ItemsController < ApplicationController
  before_action :set_items, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @items = Item.all.order("category_id").page params[:page]
    json_response(@items)
  end

  # GET /items/:id
  def show
    @item = Item.find_by_slug(params[:id])
    json_response(@items)
  end


  private

  def items_params
    # whitelist params
    params.permit(:id, :name, :price, :title, :created_by)
  end

  def set_items
    @items = Item.find_by_slug(params[:id])
  end
end
