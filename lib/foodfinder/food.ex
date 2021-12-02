defmodule Foodfinder.Food do
  use Ecto.Schema
  import Ecto.Changeset
  alias Foodfinder.User

  schema "Food" do
    field :food_name, :string
    field :restaurant, :string
    field :price, :float
    field :distance, :float
  end

  def changeset(food, attrs \\ %{}) do
    food
    |> cast(attrs, [:food_name, :restaurant, :price, :distance])
  end
end
