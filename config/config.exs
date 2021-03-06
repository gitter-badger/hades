# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hades,
  ecto_repos: [Hades.Repo]

# Configures the endpoint
config :hades, HadesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ey0bQLXc0zl3RLEwC/rGXEr1Tm66HP+jpmuzXag+9kafdSGlI3KSQd5J0saQJc8E",
  render_errors: [view: HadesWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Hades.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
