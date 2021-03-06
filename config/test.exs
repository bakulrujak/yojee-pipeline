use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :yojee_chat_example, YojeeChatExampleWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :info

# Configure your database
config :yojee_chat_example, YojeeChatExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "d0ntt3ll",
  database: "yojee_chat_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :yojee_chat_example, YojeeChatExampleWeb.Endpoint,
	http: [port: {:system, "PORT"}],
  url: [host: "localhost"],
  secret_key_base: "YfWm0HzzwsiEUgV7hgNNV09y6tficxKchsn200tLPPECtFmggvGGFBR3ICAUDqwb",
  render_errors: [view: YojeeChatExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: YojeeChatExample.PubSub,
           adapter: Phoenix.PubSub.PG2]