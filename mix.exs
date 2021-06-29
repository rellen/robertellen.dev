defmodule RobertEllen.Dev.MixProject do
  use Mix.Project

  def project do
    [
      app: :robert_ellen_dev,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RobertEllen.Dev.Application, []}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:still, github: "still-ex/still", ref: "master", override: true},
      {:still_snowpack, "~> 0.1.0"},
      {:nodejs, "~> 2.0"}
    ]
  end
end
