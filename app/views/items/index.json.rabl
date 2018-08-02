collection @items

extends "items/show"

node(:pagination) do
  {
    total: @items.count,
    total_pages: 20
  }
end
