defmodule Maptest.Repo do
  use Ecto.Repo,
    otp_app: :maptest,
    adapter: Ecto.Adapters.Postgres
end
