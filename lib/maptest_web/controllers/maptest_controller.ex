defmodule MaptestWeb.MaptestController do
  use MaptestWeb, :controller

  alias Maptest.Locations.Location

  def index(conn, _params) do
    locations = Locations.get_locations()
    render(conn, "index.html")
  end

  def register(conn, _params) do
    changeset = Location.changeset(%Location{})
    render(conn, "register.html", changeset: changeset)
  end

  def create(conn, params) do
    case Locations.create(params["location"]) do
      {:ok, _location} ->
        conn
        |> put_flash(:into, "座標が登録できました。")
        |> redirect(to: Routes.map_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "register.html", changeset: changeset)
    end
  end
end
