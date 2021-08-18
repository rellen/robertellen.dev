import Config

alias Still.Preprocessor.{
  Frontmatter,
  EEx,
  Markdown,
  OutputPath,
  AddLayout,
  Save,
  AddContent,
  Image
}

config :still,
  dev_layout: true,
  template_helpers: [RobertEllen.Dev.ViewHelpers, Still.Snowpack.TemplateHelpers],
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  preprocessors: %{
    ".xml" => [AddContent, EEx, RobertEllen.Dev.XMLPreprocessor, OutputPath, Save],
    ".md" => [AddContent, EEx, Frontmatter, Markdown, RobertEllen.Dev.BlogPath, AddLayout, Save]
  }

config :still_snowpack,
  input: Path.join(Path.dirname(__DIR__), "assets"),
  output: Path.join([Path.dirname(__DIR__), "_site", "assets"])

import_config("#{Mix.env()}.exs")
