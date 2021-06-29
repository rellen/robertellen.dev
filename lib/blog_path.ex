defmodule RobertEllen.Dev.BlogPath do
  use Still.Preprocessor

  @impl true
  def render(%{metadata: %{permalink: permalink}} = file) do
    %{file | output_file: permalink}
  end

  #  def render(%{input_file: input_file, extension: extension} = file) do
  def render(%{input_file: input_file, extension: extension} = file) when not is_nil(extension) do
    output_file =
      input_file
      |> String.replace(Path.extname(input_file), extension)
      |> String.replace_prefix("blog/", "")

    %{file | output_file: output_file}
  end

  def render(%{input_file: input_file} = file) do
    %{
      file
      | output_file:
          input_file
          |> String.replace_prefix("blog/", "")
    }
  end
end
