defmodule P.Industries.Singularity.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do

    Dotenv.load
    Mix.Task.run("loadconfig")

    children = [
      # Start the Telemetry supervisor
      P.Industries.Singularity.Web.Telemetry,
      # Start the Ecto repository
      P.Industries.Singularity.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: P.Industries.Singularity.PubSub},
      # Start Finch
      {Finch, name: P.Industries.Singularity.Finch},
      # Start the Endpoint (http/https)
      P.Industries.Singularity.Web.Endpoint
      # Start a worker by calling: P.Industries.Singularity.Worker.start_link(arg)
      # {P.Industries.Singularity.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: P.Industries.Singularity.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    P.Industries.Singularity.Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
