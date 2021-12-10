defmodule FoodfinderWeb.TitleController do
  use FoodfinderWeb, :controller
  alias Foodfinder.{Accounts, Users}

  plug :authenticate_user

  def index(%{assigns: %{authenticated_user: users}} = conn, _params) do
    render(conn, "index.html", account: users)

  end

  def authenticate_user(conn, _opts) do
    token = get_session(conn, :user_token)
    {:ok, id} = Phoenix.Token.verify(FoodfinderWeb.Endpoint, "randomized_salt", token)
    assign(conn, :authenticated_user, Accounts.get(id))
  end
end
