import Config

alias Still.Preprocessor.{
  OutputPath,
  Save
}

config :still,
  dev_layout: false,
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  preprocessors: %{
    ".css" => [Site.PostcssPreprocessor, OutputPath, Save],
    ".css~" => []
  }

import_config("#{Mix.env()}.exs")
