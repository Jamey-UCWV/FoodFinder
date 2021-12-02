defmodule Foodfinder.Repo do
  use Ecto.Repo,
    otp_app: :foodfinder,
    adapter: Ecto.Adapters.Postgres
end
