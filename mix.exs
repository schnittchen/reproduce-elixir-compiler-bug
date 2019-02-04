defmodule Umbrella.Mixfile do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      build_embedded: Mix.env == :prod,
      # See https://trello.com/c/nsM6dCyl/84-angeblich-protocol-consolidation-in-development:
      # Let's see if this fixes it, even though it seems to contradict
      # http://blog.plataformatec.com.br/2015/04/build-embedded-and-start-permanent-in-elixir-1-0-4/
      consolidate_protocols: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    []
  end

  # Aliases are shortcut or tasks specific to the current project.
  # For example, to create, and migrate at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
    ]
  end
end
