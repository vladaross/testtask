module Response
  def json_response(object, status = :ok)
    render json: @items.as_json(only: [:name, :price]), status: status
  end
end
