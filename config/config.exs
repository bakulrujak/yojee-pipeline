# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :yojee_chat_example,
  ecto_repos: [YojeeChatExample.Repo]

# Configures the endpoint
# config :yojee_chat_example, YojeeChatExampleWeb.Endpoint,
# 	http: [port: {:system, "PORT"}],
#   url: [host: "localhost"],
#   secret_key_base: "YfWm0HzzwsiEUgV7hgNNV09y6tficxKchsn200tLPPECtFmggvGGFBR3ICAUDqwb",
#   render_errors: [view: YojeeChatExampleWeb.ErrorView, accepts: ~w(html json)],
#   pubsub: [name: YojeeChatExample.PubSub,
#            adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :libcluster,
  topologies: [
    ec2cluster: [
      strategy: ClusterEC2.Strategy.Tags,
      config: [
        ec2_tagname: "cluster:yojee-deployment"
      ],
    ]
  ]

config :ex_aws,
  access_key_id: [{:system, "AWS_ACCESS_KEY_ID"}, :instance_role],
  secret_access_key: [{:system, "AWS_SECRET_ACCESS_KEY"}, :instance_role],
  debug_requests: false,
  region: "us-east-1"  