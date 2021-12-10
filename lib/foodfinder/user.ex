defmodule Foodfinder.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bcrypt

  schema "users" do
    field :username, :string
    field :password, :string
    field :name, :string
    field :email, :string

    timestamps()
  end

  def changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password, :name, :email])
    |> put_password_hash()
  end

  def create_changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password, :name, :email])
    |> validate_required([:username, :password, :name, :email])
    |> validate_length(:password, min: 10)
    |> validate_format(:email, ~r/@/)
    |> put_password_hash()
    |> unique_constraint(:email)
  end

  defp put_password_hash(
         %Ecto.Changeset{valid?: true, changes: %{password: password}} = changeset
       ) do
    put_change(changeset, :password_hash, Bcrypt.hash_pwd_salt(password))
  end

  defp put_password_hash(changeset) do
    changeset
  end
end
