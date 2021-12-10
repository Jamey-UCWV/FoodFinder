defmodule Foodfinder.UserTest do
  use Foodfinder.DataCase
  alias Foodfinder.Accounts

  describe "module Users.create/1" do
    test "create a new user with the correct params" do
      params = %{
        username: "jamesshamblin123",
        password: "password",
        name: "James Shamblin",
        email:"jamesshamblin@ucwv.edu"
      }

      assert {:ok %{}} = Accounts.create(params)
    end

    test "rejects the creation of a user with no password" do
      params = %{

        username: "jamesshamblin123",
        name: "James Shamblin",
        email: "jamesshamblin@ucwv.edu"
      }

      assert {:error, changeset} = Accounts.create(params)
      assert "Password cannot be blank" in error_on(changeset).password

    end
  end
end
