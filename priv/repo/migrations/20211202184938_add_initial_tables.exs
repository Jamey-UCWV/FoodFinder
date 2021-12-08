defmodule Foodfinder.Repo.Migrations.AddInitialTables do
  use Ecto.Migration

  def change do
    create table("user") do
      add :username, :string
      add :password, :string
      add :name, :string
      add :email, :string

      timestamps()
    end
  end
end
