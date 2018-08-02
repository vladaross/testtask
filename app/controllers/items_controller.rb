class ItemsController < ApplicationController
  before_action :set_items, only: [:show, :update, :destroy]

  # GET /todos
  def index
    @items = Item.all.page params[:page]
    json_response(@items)
  end

  # POST /items
  def create
    @items = Item.create!(items_params)
    json_response(@items, :created)
  end

  # GET /items/:id
  def show
    @item = Item.find_by_slug(params[:id])
    json_response(@items)
  end


  # PUT /items/:id
  def update
    @items.update(items_params)
    head :no_content
  end

  # DELETE /items/:id
  def destroy
    @items.destroy
    head :no_content
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
