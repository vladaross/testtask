object @item
attributes :name, :price, :category_id

node(:edit_url) { |item| edit_item_url(item) }
child(:category) { attributes :name }
