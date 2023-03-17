defmodule P.Industries.Singularity.Web.PageController do
  use P.Industries.Singularity.Web, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
end
