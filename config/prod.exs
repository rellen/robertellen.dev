import Config

config :still,
  url_fingerprinting: true,
  base_url: "https://robertellen.dev",
  pass_through_copy: [
    ~r/.*jpe?g/,
    "images",
    "fonts",
    "CNAME"
  ]
