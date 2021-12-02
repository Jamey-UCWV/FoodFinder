defmodule Foodfinder.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias FoodFinder.Food

  schema "users" do
    field :username, :string
    field :password, :string
    field :name, :string
    field :email, :string
  end
end
