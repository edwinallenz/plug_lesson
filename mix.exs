defmodule PlugLesson.Mixfile do
  use Mix.Project

  def project do
    [
      app: :plug_lesson,
      version: "0.1.0",
      elixir: "~> 1.5-dev",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :cowboy, :plug],
      mod: {PlugLesson, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"}
    ]
  end
end
