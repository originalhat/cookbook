# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cookbook,
  ecto_repos: [Cookbook.Repo]

# Configures the endpoint
config :cookbook, CookbookWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pbBMugVYTK+xT94Ms1i1fzRuwKuX7WfP0m+CACpQklda8HtGGnOL/A1PjcTCLVr1",
  render_errors: [view: CookbookWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Cookbook.PubSub,
  live_view: [signing_salt: "T8nxRDMQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
