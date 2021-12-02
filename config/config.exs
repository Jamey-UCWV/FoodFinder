# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :foodfinder,
  ecto_repos: [Foodfinder.Repo]

# Configures the endpoint
config :foodfinder, FoodfinderWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dt/kgzmL1ziECaMs2Av12qBPtLJjTI6ZYwYBGpJhk4MLBPubRvDockImlm7N2pIA",
  render_errors: [view: FoodfinderWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Foodfinder.PubSub,
  live_view: [signing_salt: "ICZ6XSX9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
