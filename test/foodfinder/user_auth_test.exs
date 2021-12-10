defmodule Foodfinder.UserAuthTest do
  use Foodfinder.DataCase
  alias Foodfinder.{Accounts, Users}
  alias Foodfinder.Accounts.UserAuth

  describe "UserAuth.login/2" do
    test "Login should allow user access" do
      password = "hello"

      params = %{
       username: "jamesshamblin1",
       password: password,
       name: "James Shamblin",
       email: "jamesshamblin@ucwv.edu"

      }

      assert {:ok, %{email: email}} = Accounts.create(params)
      assert %Users{email: ^email} = UserAuth.login(email, password)

    end

    test "should return nil for invalid login" do
      assert UserAuth.login("Notsuspiciousemail@me.com", "IamJames") == nil
    end

  end
end
