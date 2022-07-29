defmodule Maptest.Locations do
  alias Maptest.Locations.Location
  alias Maptest.Repo

  def create(attrs) do
    Location.changeset(%Location{}, attrs)
    |> Repo.insert()
  end

  def get_locations() do
    Repo.all(Location)
  end

end
