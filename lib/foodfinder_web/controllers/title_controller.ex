defmodule FoodfinderWeb.TitleController do
  use FoodfinderWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
