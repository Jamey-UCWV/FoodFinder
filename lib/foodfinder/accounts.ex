defmodule Foodfinder.Accounts do
  alias Foodfinder.User
  alias Foodfinder.Repo

  import Ecto.Query

  def create(params) do
    %User{}
    |> User.create_changeset(params)
    |>Repo.insert()
  end

  def get(id) do
    Repo.get(User, id)
  end
end
