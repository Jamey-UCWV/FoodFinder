defmodule Foodfinder.Repo.Migrations.Food do
  use Ecto.Migration

  def change do
    create table("food") do
      add :food_name, :string
      add :restaurant, :string
      add :price, :string
      add :distance, :string

      timestamps()

    end
  end
end
