defmodule RobertEllen.Dev.Temple do
  @moduledoc """
  Renders a Temple file. See `Still.Preprocessor.Renderer` and
  `Still.Preprocessor.EEx.Renderer`.
  """

  use Still.Preprocessor

  @extension ".html"

  @impl true
  def render(%{run_type: :compile_metadata} = source_file) do
    set_extension(source_file)
  end

  def render(source_file) do
    %{source_file | content: do_render(source_file)}
    |> set_extension()
  end

  defp do_render(source_file) do
    IO.inspect(source_file)
    [{module, _}] = Code.compile_string(source_file.content)
    module.render(source_file.metadata) |> Phoenix.HTML.safe_to_string()
  end

  defp set_extension(source_file) do
    %{source_file | extension: @extension}
  end
end
