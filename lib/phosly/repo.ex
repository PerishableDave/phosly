defmodule Phosly.Repo do
  use Ecto.Repo,
    otp_app: :phosly,
    adapter: Ecto.Adapters.Postgres
end
