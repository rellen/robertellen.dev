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

content_before_preprocessors = [
  AddContent,
  Frontmatter
]

content_after_preprocessors = [
  OutputPath,
  AddLayout,
  Save
]

config :still,
  domain: "http://localhost:3000",
  dev_layout: true,
  template_helpers: [RobertEllen.Dev.ViewHelpers],
  input: Path.join(Path.dirname(__DIR__), "priv/site"),
  output: Path.join(Path.dirname(__DIR__), "_site"),
  pass_through_copy: ["robots.txt", "favicon.ico"],
  url_fingerprinting: false,
  ignore_files: ["assets", ~r/undo\-tree/],
  watchers: [
    npx: [
      "tailwindcss",
      "-o",
      "../global.css",
      "--watch",
      "-i",
      "global.css",
      cd: "priv/site/assets",
      env: [{"NODE_ENV", if(Mix.env() == :prod, do: "production", else: "development")}]
    ]
  ],
  preprocessors: %{
    ".xml" => [AddContent, EEx, RobertEllen.Dev.XMLPreprocessor, OutputPath, Save],
    ".md" => [AddContent, EEx, Frontmatter, Markdown, RobertEllen.Dev.BlogPath, AddLayout, Save],
    ".temple" =>
      content_before_preprocessors ++ [RobertEllen.Dev.Temple] ++ content_after_preprocessors
  }

import_config("#{Mix.env()}.exs")
