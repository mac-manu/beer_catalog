# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :beer_catalog,
  ecto_repos: [BeerCatalog.Repo]

# Configures the endpoint
config :beer_catalog, BeerCatalogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sE/2RSXBpU+dukwwIooBF3zNdS5EIXtvSw/vNb+VAPNxwL9IaqEmeXLPpKrP937K",
  render_errors: [view: BeerCatalogWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BeerCatalog.PubSub,
  live_view: [signing_salt: "a8loNtYO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
