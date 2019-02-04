defmodule App2.Mixfile do
  use Mix.Project

  def project do
    [
      app: :app2,
      version: "0.0.1",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.8",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {App2.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  #defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.4.0"},
      {:plug_cowboy, "~> 2.0"},
      {:plug, "~> 1.7"},
    ]
  end
end
