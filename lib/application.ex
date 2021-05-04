defmodule Site.Application do
  use Application

  @js_path Path.dirname(__DIR__) |> Path.join("/assets/") |> Path.expand()

  def start(_type, _args) do
    IO.puts("#{inspect(@js_path)}")

    children = [
      {NodeJS.Supervisor, [path: @js_path]}
    ]

    opts = [strategy: :one_for_one, name: Still.NodeJS.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
