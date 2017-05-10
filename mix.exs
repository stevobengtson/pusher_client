defmodule PusherClient.Mixfile do
  use Mix.Project

  def project do
    [ app: :pusher_client,
      version: "0.0.2",
      elixir: "~> 1.2",
      deps: deps() ]
  end

  def application do
    [ applications: [ :logger ] ]
  end

  defp deps do
    [ { :websocket_client, github: "jeremyong/websocket_client" },
      { :exjsx, "~> 4.0" },
      { :meck, "~> 0.8.4", only: :test } ]
  end
end
