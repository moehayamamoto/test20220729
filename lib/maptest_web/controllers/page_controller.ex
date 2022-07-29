defmodule MaptestWeb.PageController do
  use MaptestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
