# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phosly,
  ecto_repos: [Phosly.Repo]

# Configures the endpoint
config :phosly, PhoslyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hAG3qJWVeUj3IVEHQJctVHHgSdiQ2vhX/Ni0eZ7dvaRMmuIPUIaVN40ozqG6oPnl",
  render_errors: [view: PhoslyWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Phosly.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
