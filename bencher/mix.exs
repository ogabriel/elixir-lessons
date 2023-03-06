defmodule Bencher.MixProject do
  use Mix.Project

  def project do
    [
      app: :bencher,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:benchee, "~> 1.0", only: :dev},
      {:benchee_markdown, "~> 0.3", only: :dev},
      {:benchee_html, "~> 1.0", only: :dev},
      {:faker, "~> 0.17", only: [:dev, :test]}
    ]
  end
end
