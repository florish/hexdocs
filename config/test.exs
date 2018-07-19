use Mix.Config

config :hexdocs,
  port: 5002,
  hexpm_url: "http://localhost:5000",
  hexpm_impl: HexDocs.HexpmMock,
  store_impl: HexDocs.Store.Local,
  tmp_dir: "tmp",
  session_key_base: "9doqKjmNsklcWmv1+779E2su++ejdBhnSYgqAiGgwtAPpdVf4ns5eXi4IOZk1Eoi",
  session_signing_salt: "QftsNdJO",
  session_encryption_salt: "QftsNdJO",
  host: "localhost"

config :hexdocs, :repo_bucket, name: "staging.s3.hex.pm"

config :hexdocs, :docs_bucket, name: "hexdocs-private-staging"

config :goth,
  config: %{
    "type" => "service_account",
    "project_id" => "support",
    "token_source" => :oauth_jwt
  }
